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
        state.offerings!.current!.monthly!.storeProduct.priceString);
    state = state.copyWith(currencySign: currencySign);
  }

  Future<void> _setOfferingList() async {
    final monthlyPrice = state.currencySign +
        state.offerings!.current!.monthly!.storeProduct.price.toString();
    final yearlyPrice = state.currencySign +
        UtilPriceService.getMonthlyPrice(
                state.offerings!.current!.annual!.storeProduct.price)
            .toString();
    final offPercent = UtilPriceService.getOffPercent(
      UtilPriceService.getMonthlyPrice(
          state.offerings!.current!.annual!.storeProduct.price),
      state.offerings!.current!.monthly!.storeProduct.price,
    );

    state = state.copyWith(
      offeringList: [
        {
          'name': 'Monthly',
          'price': monthlyPrice,
          'id': state.offerings!.current!.monthly!.storeProduct.identifier,
        },
        {
          'name': 'Yearly',
          'price': yearlyPrice,
          'offPercent': offPercent,
          'id': state.offerings!.current!.annual!.storeProduct.identifier
        }
      ],
    );
  }

  Future<void> offErrorMessage() async {
    state = state.copyWith(errorMessage: '');
  }

  Future<void> purchaseProduct() async {
    try {
      await Purchases.purchaseStoreProduct(
          state.offeringList[state.purchaseType]['id']);
      final purchaserInfo = await Purchases.getCustomerInfo();
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
    final info = await Purchases.restorePurchases();
    final all = info.entitlements.all;
    state = state.copyWith(
        isActive: all.isNotEmpty ? all['unlimited']!.isActive : false);
  }
}
