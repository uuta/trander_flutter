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
    @Default([]) List offeringList,
    @Default('') String currencySign,
    @Default('') String errorMessage,
  }) = _PurchaseState;

  factory PurchaseState.fromJson(Map<String, dynamic> json) =>
      _$PurchaseStateFromJson(json);
}
