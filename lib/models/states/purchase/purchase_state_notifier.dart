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
    _setOfferingList();
    await switchIsLoading(false);
  }

  Future<void> _fetchOfferings() async {
    final offerings = await Purchases.getOfferings();
    state = state.copyWith(offerings: offerings);
  }

  Future<void> _setOfferingList() async {
    state = state.copyWith(
      offeringList: [
        {
          'name': 'Monthly',
          'price': state.offerings!.current!.monthly!.product.price.toString(),
        },
        {
          'name': 'Yearly',
          'price': UtilPriceService.getMonthlyPrice(
                  state.offerings!.current!.annual!.product.price)
              .toString(),
          'offPercent': UtilPriceService.getOffPercent(
              state.offerings!.current!.monthly!.product.price,
              state.offerings!.current!.annual!.product.price)
        }
      ],
    );
  }
}
