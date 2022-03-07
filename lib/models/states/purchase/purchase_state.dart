import 'package:freezed_annotation/freezed_annotation.dart';

part 'purchase_state.freezed.dart';
part 'purchase_state.g.dart';

@freezed
class PurchaseState with _$PurchaseState {
  const factory PurchaseState({
    @Default(1) int purchaseType,
  }) = _PurchaseState;

  factory PurchaseState.fromJson(Map<String, dynamic> json) =>
      _$PurchaseStateFromJson(json);
}
