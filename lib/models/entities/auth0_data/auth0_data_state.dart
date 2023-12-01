import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth0_data_state.freezed.dart';
part 'auth0_data_state.g.dart';

// TODO: Auth0DataState will be deleted
@freezed
class Auth0DataState with _$Auth0DataState {
  const factory Auth0DataState({
    @JsonKey(name: 'nickname') String? nickname,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'picture') String? picture,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'email_verified') bool? emailVefified,
    @JsonKey(name: 'iss') String? iss,
    @JsonKey(name: 'sub') @Default('') String sub,
    @JsonKey(name: 'aud') String? aud,
    @JsonKey(name: 'iat') int? iat,
    @JsonKey(name: 'exp') int? exp,
    @JsonKey(name: 'auth_time') int? authTime,
    @JsonKey(name: 'nonce') String? nonce,
  }) = _Auth0DataState;

  factory Auth0DataState.fromJson(Map<String, dynamic> json) =>
      _$Auth0DataStateFromJson(json);
}
