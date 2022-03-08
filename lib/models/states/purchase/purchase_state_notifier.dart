import '/import.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'dart:developer' as developer;

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
        state.offerings!.current!.monthly!.product.price,
        state.offerings!.current!.annual!.product.price);

    state = state.copyWith(
      offeringList: [
        {
          'name': 'Monthly',
          'price': _monthlyPrice,
        },
        {'name': 'Yearly', 'price': _yearlyPrice, 'offPercent': _offPercent}
      ],
    );
  }
}
