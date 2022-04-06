import '/import.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import '/models/errors/subscribe_error.dart';

final purchaseNotifierProvider =
    StateNotifierProvider<PurchaseStateNotifier, PurchaseState>(
  (ref) => PurchaseStateNotifier(),
);

class PurchaseStateNotifier extends StateNotifier<PurchaseState> {
  PurchaseStateNotifier() : super(const PurchaseState());

  Future<void> switchPurchaseType(int purchaseType) async {
    state = state.copyWith(purchaseType: purchaseType);
  }

  Future<void> switchIsLoading(bool isLoading) async {
    state = state.copyWith(isLoading: isLoading);
  }

  Future<void> initAction() async {
    switchIsLoading(true);
    await _fetchOfferings();
    _getCurrencySign();
    await _setOfferingList();
    switchIsLoading(false);
  }

  Future<void> _fetchOfferings() async {
    final offerings = await Purchases.getOfferings();
    state = state.copyWith(offerings: offerings);
  }

  Future<void> _getCurrencySign() async {
    final String currencySign = UtilPriceService.getCurrencySign(
        state.offerings!.current!.monthly!.product.priceString);
    state = state.copyWith(currencySign: currencySign);
  }

  Future<void> _setOfferingList() async {
    final _monthlyPrice = state.currencySign +
        state.offerings!.current!.monthly!.product.price.toString();
    final _yearlyPrice = state.currencySign +
        UtilPriceService.getMonthlyPrice(
                state.offerings!.current!.annual!.product.price)
            .toString();
    final _offPercent = UtilPriceService.getOffPercent(
      UtilPriceService.getMonthlyPrice(
          state.offerings!.current!.annual!.product.price),
      state.offerings!.current!.monthly!.product.price,
    );

    state = state.copyWith(
      offeringList: [
        {
          'name': 'Monthly',
          'price': _monthlyPrice,
          'id': state.offerings!.current!.monthly!.product.identifier,
        },
        {
          'name': 'Yearly',
          'price': _yearlyPrice,
          'offPercent': _offPercent,
          'id': state.offerings!.current!.annual!.product.identifier
        }
      ],
    );
  }

  Future<void> offErrorMessage() async {
    state = state.copyWith(errorMessage: '');
  }

  Future<void> purchaseProduct() async {
    try {
      await Purchases.purchaseProduct(
          state.offeringList[state.purchaseType]['id']);
      final purchaserInfo = await Purchases.getPurchaserInfo();
      state = state.copyWith(
          isActive: purchaserInfo.entitlements.all['unlimited']!.isActive);
    } on PlatformException catch (e) {
      final code = PurchasesErrorHelper.getErrorCode(e);
      final error = convertPurchasesError(code, additionalCode: e.code);
      state = state.copyWith(
        errorMessage: error.message ?? 'Unknown error',
      );
    }
  }

  Future<void> restoreTransactions() async {
    final info = await Purchases.restoreTransactions();
    final all = info.entitlements.all;
    state = state.copyWith(
        isActive: all.isNotEmpty ? all['unlimited']!.isActive : false);
  }
}
