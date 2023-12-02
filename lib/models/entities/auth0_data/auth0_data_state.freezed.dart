// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth0_data_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Auth0DataState _$Auth0DataStateFromJson(Map<String, dynamic> json) {
  return _Auth0DataState.fromJson(json);
}

/// @nodoc
mixin _$Auth0DataState {
  @JsonKey(name: 'nickname')
  String? get nickname => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'picture')
  String? get picture => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'email_verified')
  bool? get emailVefified => throw _privateConstructorUsedError;
  @JsonKey(name: 'iss')
  String? get iss => throw _privateConstructorUsedError;
  @JsonKey(name: 'sub')
  String get sub => throw _privateConstructorUsedError;
  @JsonKey(name: 'aud')
  String? get aud => throw _privateConstructorUsedError;
  @JsonKey(name: 'iat')
  int? get iat => throw _privateConstructorUsedError;
  @JsonKey(name: 'exp')
  int? get exp => throw _privateConstructorUsedError;
  @JsonKey(name: 'auth_time')
  int? get authTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'nonce')
  String? get nonce => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $Auth0DataStateCopyWith<Auth0DataState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Auth0DataStateCopyWith<$Res> {
  factory $Auth0DataStateCopyWith(
          Auth0DataState value, $Res Function(Auth0DataState) then) =
      _$Auth0DataStateCopyWithImpl<$Res, Auth0DataState>;
  @useResult
  $Res call(
      {@JsonKey(name: 'nickname') String? nickname,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'picture') String? picture,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'email_verified') bool? emailVefified,
      @JsonKey(name: 'iss') String? iss,
      @JsonKey(name: 'sub') String sub,
      @JsonKey(name: 'aud') String? aud,
      @JsonKey(name: 'iat') int? iat,
      @JsonKey(name: 'exp') int? exp,
      @JsonKey(name: 'auth_time') int? authTime,
      @JsonKey(name: 'nonce') String? nonce});
}

/// @nodoc
class _$Auth0DataStateCopyWithImpl<$Res, $Val extends Auth0DataState>
    implements $Auth0DataStateCopyWith<$Res> {
  _$Auth0DataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? picture = freezed,
    Object? updatedAt = freezed,
    Object? emailVefified = freezed,
    Object? iss = freezed,
    Object? sub = null,
    Object? aud = freezed,
    Object? iat = freezed,
    Object? exp = freezed,
    Object? authTime = freezed,
    Object? nonce = freezed,
  }) {
    return _then(_value.copyWith(
      nickname: freezed == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVefified: freezed == emailVefified
          ? _value.emailVefified
          : emailVefified // ignore: cast_nullable_to_non_nullable
              as bool?,
      iss: freezed == iss
          ? _value.iss
          : iss // ignore: cast_nullable_to_non_nullable
              as String?,
      sub: null == sub
          ? _value.sub
          : sub // ignore: cast_nullable_to_non_nullable
              as String,
      aud: freezed == aud
          ? _value.aud
          : aud // ignore: cast_nullable_to_non_nullable
              as String?,
      iat: freezed == iat
          ? _value.iat
          : iat // ignore: cast_nullable_to_non_nullable
              as int?,
      exp: freezed == exp
          ? _value.exp
          : exp // ignore: cast_nullable_to_non_nullable
              as int?,
      authTime: freezed == authTime
          ? _value.authTime
          : authTime // ignore: cast_nullable_to_non_nullable
              as int?,
      nonce: freezed == nonce
          ? _value.nonce
          : nonce // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Auth0DataStateImplCopyWith<$Res>
    implements $Auth0DataStateCopyWith<$Res> {
  factory _$$Auth0DataStateImplCopyWith(_$Auth0DataStateImpl value,
          $Res Function(_$Auth0DataStateImpl) then) =
      __$$Auth0DataStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'nickname') String? nickname,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'picture') String? picture,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'email_verified') bool? emailVefified,
      @JsonKey(name: 'iss') String? iss,
      @JsonKey(name: 'sub') String sub,
      @JsonKey(name: 'aud') String? aud,
      @JsonKey(name: 'iat') int? iat,
      @JsonKey(name: 'exp') int? exp,
      @JsonKey(name: 'auth_time') int? authTime,
      @JsonKey(name: 'nonce') String? nonce});
}

/// @nodoc
class __$$Auth0DataStateImplCopyWithImpl<$Res>
    extends _$Auth0DataStateCopyWithImpl<$Res, _$Auth0DataStateImpl>
    implements _$$Auth0DataStateImplCopyWith<$Res> {
  __$$Auth0DataStateImplCopyWithImpl(
      _$Auth0DataStateImpl _value, $Res Function(_$Auth0DataStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? picture = freezed,
    Object? updatedAt = freezed,
    Object? emailVefified = freezed,
    Object? iss = freezed,
    Object? sub = null,
    Object? aud = freezed,
    Object? iat = freezed,
    Object? exp = freezed,
    Object? authTime = freezed,
    Object? nonce = freezed,
  }) {
    return _then(_$Auth0DataStateImpl(
      nickname: freezed == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVefified: freezed == emailVefified
          ? _value.emailVefified
          : emailVefified // ignore: cast_nullable_to_non_nullable
              as bool?,
      iss: freezed == iss
          ? _value.iss
          : iss // ignore: cast_nullable_to_non_nullable
              as String?,
      sub: null == sub
          ? _value.sub
          : sub // ignore: cast_nullable_to_non_nullable
              as String,
      aud: freezed == aud
          ? _value.aud
          : aud // ignore: cast_nullable_to_non_nullable
              as String?,
      iat: freezed == iat
          ? _value.iat
          : iat // ignore: cast_nullable_to_non_nullable
              as int?,
      exp: freezed == exp
          ? _value.exp
          : exp // ignore: cast_nullable_to_non_nullable
              as int?,
      authTime: freezed == authTime
          ? _value.authTime
          : authTime // ignore: cast_nullable_to_non_nullable
              as int?,
      nonce: freezed == nonce
          ? _value.nonce
          : nonce // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Auth0DataStateImpl implements _Auth0DataState {
  const _$Auth0DataStateImpl(
      {@JsonKey(name: 'nickname') this.nickname,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'picture') this.picture,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'email_verified') this.emailVefified,
      @JsonKey(name: 'iss') this.iss,
      @JsonKey(name: 'sub') this.sub = '',
      @JsonKey(name: 'aud') this.aud,
      @JsonKey(name: 'iat') this.iat,
      @JsonKey(name: 'exp') this.exp,
      @JsonKey(name: 'auth_time') this.authTime,
      @JsonKey(name: 'nonce') this.nonce});

  factory _$Auth0DataStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$Auth0DataStateImplFromJson(json);

  @override
  @JsonKey(name: 'nickname')
  final String? nickname;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'picture')
  final String? picture;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'email_verified')
  final bool? emailVefified;
  @override
  @JsonKey(name: 'iss')
  final String? iss;
  @override
  @JsonKey(name: 'sub')
  final String sub;
  @override
  @JsonKey(name: 'aud')
  final String? aud;
  @override
  @JsonKey(name: 'iat')
  final int? iat;
  @override
  @JsonKey(name: 'exp')
  final int? exp;
  @override
  @JsonKey(name: 'auth_time')
  final int? authTime;
  @override
  @JsonKey(name: 'nonce')
  final String? nonce;

  @override
  String toString() {
    return 'Auth0DataState(nickname: $nickname, name: $name, email: $email, picture: $picture, updatedAt: $updatedAt, emailVefified: $emailVefified, iss: $iss, sub: $sub, aud: $aud, iat: $iat, exp: $exp, authTime: $authTime, nonce: $nonce)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Auth0DataStateImpl &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.emailVefified, emailVefified) ||
                other.emailVefified == emailVefified) &&
            (identical(other.iss, iss) || other.iss == iss) &&
            (identical(other.sub, sub) || other.sub == sub) &&
            (identical(other.aud, aud) || other.aud == aud) &&
            (identical(other.iat, iat) || other.iat == iat) &&
            (identical(other.exp, exp) || other.exp == exp) &&
            (identical(other.authTime, authTime) ||
                other.authTime == authTime) &&
            (identical(other.nonce, nonce) || other.nonce == nonce));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nickname, name, email, picture,
      updatedAt, emailVefified, iss, sub, aud, iat, exp, authTime, nonce);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Auth0DataStateImplCopyWith<_$Auth0DataStateImpl> get copyWith =>
      __$$Auth0DataStateImplCopyWithImpl<_$Auth0DataStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Auth0DataStateImplToJson(
      this,
    );
  }
}

abstract class _Auth0DataState implements Auth0DataState {
  const factory _Auth0DataState(
      {@JsonKey(name: 'nickname') final String? nickname,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'email') final String? email,
      @JsonKey(name: 'picture') final String? picture,
      @JsonKey(name: 'updated_at') final String? updatedAt,
      @JsonKey(name: 'email_verified') final bool? emailVefified,
      @JsonKey(name: 'iss') final String? iss,
      @JsonKey(name: 'sub') final String sub,
      @JsonKey(name: 'aud') final String? aud,
      @JsonKey(name: 'iat') final int? iat,
      @JsonKey(name: 'exp') final int? exp,
      @JsonKey(name: 'auth_time') final int? authTime,
      @JsonKey(name: 'nonce') final String? nonce}) = _$Auth0DataStateImpl;

  factory _Auth0DataState.fromJson(Map<String, dynamic> json) =
      _$Auth0DataStateImpl.fromJson;

  @override
  @JsonKey(name: 'nickname')
  String? get nickname;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'picture')
  String? get picture;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'email_verified')
  bool? get emailVefified;
  @override
  @JsonKey(name: 'iss')
  String? get iss;
  @override
  @JsonKey(name: 'sub')
  String get sub;
  @override
  @JsonKey(name: 'aud')
  String? get aud;
  @override
  @JsonKey(name: 'iat')
  int? get iat;
  @override
  @JsonKey(name: 'exp')
  int? get exp;
  @override
  @JsonKey(name: 'auth_time')
  int? get authTime;
  @override
  @JsonKey(name: 'nonce')
  String? get nonce;
  @override
  @JsonKey(ignore: true)
  _$$Auth0DataStateImplCopyWith<_$Auth0DataStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
