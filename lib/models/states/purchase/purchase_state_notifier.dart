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

  void initAction() {
    switchIsLoading(true);
    _fetchOfferings();
    _getmonthlyPrice();
    _getYearOfMonthlyPrice();
    _getOffPercent();
    switchIsLoading(false);
  }

  Future<void> _fetchOfferings() async {
    final offerings = await Purchases.getOfferings();
    state = state.copyWith(offerings: offerings);
  }

  Future<void> _getmonthlyPrice() async {
    state = state.copyWith(
        monthlyPrice: state.offerings!.current!.monthly!.product.price);
  }

  Future<void> _getYearOfMonthlyPrice() async {
    final data = UtilPriceService.getMonthlyPrice(
        state.offerings!.current!.annual!.product.price);
    state = state.copyWith(yearOfMonthlyPrice: data);
  }

  Future<void> _getOffPercent() async {
    final data = UtilPriceService.getOffPercent(state.yearOfMonthlyPrice,
        state.offerings!.current!.annual!.product.price);
    state = state.copyWith(offPercent: data);
  }
}
