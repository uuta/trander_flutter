import '/import.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'supabase_state.freezed.dart';

@freezed
class SupabaseState with _$SupabaseState {
  const factory SupabaseState({
    @Default(false) bool isBusy,
    @Default(false) bool isLoggedIn,
    required SupabaseDataState data,
    String? idToken,
    String? errorMessage,
    SupabaseClient? client,
  }) = _SupabaseState;
}
