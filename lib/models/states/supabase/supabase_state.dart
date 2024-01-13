import '/import.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'supabase_state.freezed.dart';

@freezed
class SupabaseState with _$SupabaseState {
  const factory SupabaseState({
    @Default(false) bool isBusy,
    required SupabaseDataState data,
    String? accessToken,
    String? errorMessage,
  }) = _SupabaseState;
}
