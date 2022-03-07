import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:purchases_flutter/purchases_flutter.dart';

part 'purchase_state.freezed.dart';
part 'purchase_state.g.dart';

@freezed
class PurchaseState with _$PurchaseState {
  const factory PurchaseState({
    @Default(false) bool isLoading,
    @Default(1) int purchaseType,
    Offerings? offerings,
    @Default(0) double monthlyPrice,
    @Default(0) double yearOfMonthlyPrice,
    @Default(0) double offPercent,
  }) = _PurchaseState;

  factory PurchaseState.fromJson(Map<String, dynamic> json) =>
      _$PurchaseStateFromJson(json);
}
