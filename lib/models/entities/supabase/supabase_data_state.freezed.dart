// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'supabase_data_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SupabaseDataState _$SupabaseDataStateFromJson(Map<String, dynamic> json) {
  return _SupabaseDataState.fromJson(json);
}

/// @nodoc
class _$SupabaseDataStateTearOff {
  const _$SupabaseDataStateTearOff();

  _SupabaseDataState call(
      {@JsonKey(name: 'aud') String? aud,
      @JsonKey(name: 'exp') int? exp,
      @JsonKey(name: 'iat') int? iat,
      @JsonKey(name: 'iss') String? iss,
      @JsonKey(name: 'sub') String sub = '',
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'phone') String? picture,
      @JsonKey(name: 'role') String? role}) {
    return _SupabaseDataState(
      aud: aud,
      exp: exp,
      iat: iat,
      iss: iss,
      sub: sub,
      name: name,
      email: email,
      picture: picture,
      role: role,
    );
  }

  SupabaseDataState fromJson(Map<String, Object?> json) {
    return SupabaseDataState.fromJson(json);
  }
}

/// @nodoc
const $SupabaseDataState = _$SupabaseDataStateTearOff();

/// @nodoc
mixin _$SupabaseDataState {
  @JsonKey(name: 'aud')
  String? get aud => throw _privateConstructorUsedError;
  @JsonKey(name: 'exp')
  int? get exp => throw _privateConstructorUsedError;
  @JsonKey(name: 'iat')
  int? get iat => throw _privateConstructorUsedError;
  @JsonKey(name: 'iss')
  String? get iss => throw _privateConstructorUsedError;
  @JsonKey(name: 'sub')
  String get sub => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String? get picture => throw _privateConstructorUsedError;
  @JsonKey(name: 'role')
  String? get role => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupabaseDataStateCopyWith<SupabaseDataState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupabaseDataStateCopyWith<$Res> {
  factory $SupabaseDataStateCopyWith(
          SupabaseDataState value, $Res Function(SupabaseDataState) then) =
      _$SupabaseDataStateCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'aud') String? aud,
      @JsonKey(name: 'exp') int? exp,
      @JsonKey(name: 'iat') int? iat,
      @JsonKey(name: 'iss') String? iss,
      @JsonKey(name: 'sub') String sub,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'phone') String? picture,
      @JsonKey(name: 'role') String? role});
}

/// @nodoc
class _$SupabaseDataStateCopyWithImpl<$Res>
    implements $SupabaseDataStateCopyWith<$Res> {
  _$SupabaseDataStateCopyWithImpl(this._value, this._then);

  final SupabaseDataState _value;
  // ignore: unused_field
  final $Res Function(SupabaseDataState) _then;

  @override
  $Res call({
    Object? aud = freezed,
    Object? exp = freezed,
    Object? iat = freezed,
    Object? iss = freezed,
    Object? sub = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? picture = freezed,
    Object? role = freezed,
  }) {
    return _then(_value.copyWith(
      aud: aud == freezed
          ? _value.aud
          : aud // ignore: cast_nullable_to_non_nullable
              as String?,
      exp: exp == freezed
          ? _value.exp
          : exp // ignore: cast_nullable_to_non_nullable
              as int?,
      iat: iat == freezed
          ? _value.iat
          : iat // ignore: cast_nullable_to_non_nullable
              as int?,
      iss: iss == freezed
          ? _value.iss
          : iss // ignore: cast_nullable_to_non_nullable
              as String?,
      sub: sub == freezed
          ? _value.sub
          : sub // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$SupabaseDataStateCopyWith<$Res>
    implements $SupabaseDataStateCopyWith<$Res> {
  factory _$SupabaseDataStateCopyWith(
          _SupabaseDataState value, $Res Function(_SupabaseDataState) then) =
      __$SupabaseDataStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'aud') String? aud,
      @JsonKey(name: 'exp') int? exp,
      @JsonKey(name: 'iat') int? iat,
      @JsonKey(name: 'iss') String? iss,
      @JsonKey(name: 'sub') String sub,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'phone') String? picture,
      @JsonKey(name: 'role') String? role});
}

/// @nodoc
class __$SupabaseDataStateCopyWithImpl<$Res>
    extends _$SupabaseDataStateCopyWithImpl<$Res>
    implements _$SupabaseDataStateCopyWith<$Res> {
  __$SupabaseDataStateCopyWithImpl(
      _SupabaseDataState _value, $Res Function(_SupabaseDataState) _then)
      : super(_value, (v) => _then(v as _SupabaseDataState));

  @override
  _SupabaseDataState get _value => super._value as _SupabaseDataState;

  @override
  $Res call({
    Object? aud = freezed,
    Object? exp = freezed,
    Object? iat = freezed,
    Object? iss = freezed,
    Object? sub = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? picture = freezed,
    Object? role = freezed,
  }) {
    return _then(_SupabaseDataState(
      aud: aud == freezed
          ? _value.aud
          : aud // ignore: cast_nullable_to_non_nullable
              as String?,
      exp: exp == freezed
          ? _value.exp
          : exp // ignore: cast_nullable_to_non_nullable
              as int?,
      iat: iat == freezed
          ? _value.iat
          : iat // ignore: cast_nullable_to_non_nullable
              as int?,
      iss: iss == freezed
          ? _value.iss
          : iss // ignore: cast_nullable_to_non_nullable
              as String?,
      sub: sub == freezed
          ? _value.sub
          : sub // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SupabaseDataState implements _SupabaseDataState {
  const _$_SupabaseDataState(
      {@JsonKey(name: 'aud') this.aud,
      @JsonKey(name: 'exp') this.exp,
      @JsonKey(name: 'iat') this.iat,
      @JsonKey(name: 'iss') this.iss,
      @JsonKey(name: 'sub') this.sub = '',
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'phone') this.picture,
      @JsonKey(name: 'role') this.role});

  factory _$_SupabaseDataState.fromJson(Map<String, dynamic> json) =>
      _$$_SupabaseDataStateFromJson(json);

  @override
  @JsonKey(name: 'aud')
  final String? aud;
  @override
  @JsonKey(name: 'exp')
  final int? exp;
  @override
  @JsonKey(name: 'iat')
  final int? iat;
  @override
  @JsonKey(name: 'iss')
  final String? iss;
  @override
  @JsonKey(name: 'sub')
  final String sub;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'phone')
  final String? picture;
  @override
  @JsonKey(name: 'role')
  final String? role;

  @override
  String toString() {
    return 'SupabaseDataState(aud: $aud, exp: $exp, iat: $iat, iss: $iss, sub: $sub, name: $name, email: $email, picture: $picture, role: $role)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SupabaseDataState &&
            const DeepCollectionEquality().equals(other.aud, aud) &&
            const DeepCollectionEquality().equals(other.exp, exp) &&
            const DeepCollectionEquality().equals(other.iat, iat) &&
            const DeepCollectionEquality().equals(other.iss, iss) &&
            const DeepCollectionEquality().equals(other.sub, sub) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.picture, picture) &&
            const DeepCollectionEquality().equals(other.role, role));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(aud),
      const DeepCollectionEquality().hash(exp),
      const DeepCollectionEquality().hash(iat),
      const DeepCollectionEquality().hash(iss),
      const DeepCollectionEquality().hash(sub),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(picture),
      const DeepCollectionEquality().hash(role));

  @JsonKey(ignore: true)
  @override
  _$SupabaseDataStateCopyWith<_SupabaseDataState> get copyWith =>
      __$SupabaseDataStateCopyWithImpl<_SupabaseDataState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SupabaseDataStateToJson(this);
  }
}

abstract class _SupabaseDataState implements SupabaseDataState {
  const factory _SupabaseDataState(
      {@JsonKey(name: 'aud') String? aud,
      @JsonKey(name: 'exp') int? exp,
      @JsonKey(name: 'iat') int? iat,
      @JsonKey(name: 'iss') String? iss,
      @JsonKey(name: 'sub') String sub,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'phone') String? picture,
      @JsonKey(name: 'role') String? role}) = _$_SupabaseDataState;

  factory _SupabaseDataState.fromJson(Map<String, dynamic> json) =
      _$_SupabaseDataState.fromJson;

  @override
  @JsonKey(name: 'aud')
  String? get aud;
  @override
  @JsonKey(name: 'exp')
  int? get exp;
  @override
  @JsonKey(name: 'iat')
  int? get iat;
  @override
  @JsonKey(name: 'iss')
  String? get iss;
  @override
  @JsonKey(name: 'sub')
  String get sub;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'phone')
  String? get picture;
  @override
  @JsonKey(name: 'role')
  String? get role;
  @override
  @JsonKey(ignore: true)
  _$SupabaseDataStateCopyWith<_SupabaseDataState> get copyWith =>
      throw _privateConstructorUsedError;
}
