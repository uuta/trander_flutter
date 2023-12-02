// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth0_data_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Auth0DataStateImpl _$$Auth0DataStateImplFromJson(Map<String, dynamic> json) =>
    _$Auth0DataStateImpl(
      nickname: json['nickname'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      picture: json['picture'] as String?,
      updatedAt: json['updated_at'] as String?,
      emailVefified: json['email_verified'] as bool?,
      iss: json['iss'] as String?,
      sub: json['sub'] as String? ?? '',
      aud: json['aud'] as String?,
      iat: json['iat'] as int?,
      exp: json['exp'] as int?,
      authTime: json['auth_time'] as int?,
      nonce: json['nonce'] as String?,
    );

Map<String, dynamic> _$$Auth0DataStateImplToJson(
        _$Auth0DataStateImpl instance) =>
    <String, dynamic>{
      'nickname': instance.nickname,
      'name': instance.name,
      'email': instance.email,
      'picture': instance.picture,
      'updated_at': instance.updatedAt,
      'email_verified': instance.emailVefified,
      'iss': instance.iss,
      'sub': instance.sub,
      'aud': instance.aud,
      'iat': instance.iat,
      'exp': instance.exp,
      'auth_time': instance.authTime,
      'nonce': instance.nonce,
    };
