// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supabase_data_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SupabaseDataState _$$_SupabaseDataStateFromJson(Map<String, dynamic> json) =>
    _$_SupabaseDataState(
      aud: json['aud'] as String?,
      exp: json['exp'] as int?,
      iat: json['iat'] as int?,
      iss: json['iss'] as String?,
      sub: json['sub'] as String? ?? '',
      name: json['name'] as String?,
      email: json['email'] as String?,
      picture: json['phone'] as String?,
      role: json['role'] as String?,
    );

Map<String, dynamic> _$$_SupabaseDataStateToJson(
        _$_SupabaseDataState instance) =>
    <String, dynamic>{
      'aud': instance.aud,
      'exp': instance.exp,
      'iat': instance.iat,
      'iss': instance.iss,
      'sub': instance.sub,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.picture,
      'role': instance.role,
    };
