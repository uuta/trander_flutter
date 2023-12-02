import 'package:freezed_annotation/freezed_annotation.dart';

part 'supabase_entity.freezed.dart';
part 'supabase_entity.g.dart';

@freezed
class SupabaseEntity with _$SupabaseEntity {
  const factory SupabaseEntity({
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
  }) = _SupabaseEntity;

  factory SupabaseEntity.fromJson(Map<String, dynamic> json) =>
      _$SupabaseEntityFromJson(json);
}
