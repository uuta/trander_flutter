import 'package:freezed_annotation/freezed_annotation.dart';

part 'supabase_data_state.freezed.dart';
part 'supabase_data_state.g.dart';

@freezed
class SupabaseDataState with _$SupabaseDataState {
  const factory SupabaseDataState(
      {@JsonKey(name: 'aud') String? aud,
      @JsonKey(name: 'exp') int? exp,
      @JsonKey(name: 'iat') int? iat,
      @JsonKey(name: 'iss') String? iss,
      @JsonKey(name: 'sub') @Default('') String sub,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'phone') String? picture,
      @JsonKey(name: 'role') String? role}) = _SupabaseDataState;

  factory SupabaseDataState.fromJson(Map<String, dynamic> json) =>
      _$SupabaseDataStateFromJson(json);
}
