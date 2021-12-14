// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth0_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$Auth0StateTearOff {
  const _$Auth0StateTearOff();

  _Auth0State call(
      {bool isBusy = false,
      bool isLoggedIn = false,
      Map<dynamic, dynamic>? data,
      String? errorMessage}) {
    return _Auth0State(
      isBusy: isBusy,
      isLoggedIn: isLoggedIn,
      data: data,
      errorMessage: errorMessage,
    );
  }
}

/// @nodoc
const $Auth0State = _$Auth0StateTearOff();

/// @nodoc
mixin _$Auth0State {
  bool get isBusy => throw _privateConstructorUsedError;
  bool get isLoggedIn => throw _privateConstructorUsedError;
  Map<dynamic, dynamic>? get data => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $Auth0StateCopyWith<Auth0State> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Auth0StateCopyWith<$Res> {
  factory $Auth0StateCopyWith(
          Auth0State value, $Res Function(Auth0State) then) =
      _$Auth0StateCopyWithImpl<$Res>;
  $Res call(
      {bool isBusy,
      bool isLoggedIn,
      Map<dynamic, dynamic>? data,
      String? errorMessage});
}

/// @nodoc
class _$Auth0StateCopyWithImpl<$Res> implements $Auth0StateCopyWith<$Res> {
  _$Auth0StateCopyWithImpl(this._value, this._then);

  final Auth0State _value;
  // ignore: unused_field
  final $Res Function(Auth0State) _then;

  @override
  $Res call({
    Object? isBusy = freezed,
    Object? isLoggedIn = freezed,
    Object? data = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      isBusy: isBusy == freezed
          ? _value.isBusy
          : isBusy // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoggedIn: isLoggedIn == freezed
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>?,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$Auth0StateCopyWith<$Res> implements $Auth0StateCopyWith<$Res> {
  factory _$Auth0StateCopyWith(
          _Auth0State value, $Res Function(_Auth0State) then) =
      __$Auth0StateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isBusy,
      bool isLoggedIn,
      Map<dynamic, dynamic>? data,
      String? errorMessage});
}

/// @nodoc
class __$Auth0StateCopyWithImpl<$Res> extends _$Auth0StateCopyWithImpl<$Res>
    implements _$Auth0StateCopyWith<$Res> {
  __$Auth0StateCopyWithImpl(
      _Auth0State _value, $Res Function(_Auth0State) _then)
      : super(_value, (v) => _then(v as _Auth0State));

  @override
  _Auth0State get _value => super._value as _Auth0State;

  @override
  $Res call({
    Object? isBusy = freezed,
    Object? isLoggedIn = freezed,
    Object? data = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_Auth0State(
      isBusy: isBusy == freezed
          ? _value.isBusy
          : isBusy // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoggedIn: isLoggedIn == freezed
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>?,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Auth0State with DiagnosticableTreeMixin implements _Auth0State {
  const _$_Auth0State(
      {this.isBusy = false,
      this.isLoggedIn = false,
      this.data,
      this.errorMessage});

  @JsonKey()
  @override
  final bool isBusy;
  @JsonKey()
  @override
  final bool isLoggedIn;
  @override
  final Map<dynamic, dynamic>? data;
  @override
  final String? errorMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Auth0State(isBusy: $isBusy, isLoggedIn: $isLoggedIn, data: $data, errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Auth0State'))
      ..add(DiagnosticsProperty('isBusy', isBusy))
      ..add(DiagnosticsProperty('isLoggedIn', isLoggedIn))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Auth0State &&
            const DeepCollectionEquality().equals(other.isBusy, isBusy) &&
            const DeepCollectionEquality()
                .equals(other.isLoggedIn, isLoggedIn) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isBusy),
      const DeepCollectionEquality().hash(isLoggedIn),
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$Auth0StateCopyWith<_Auth0State> get copyWith =>
      __$Auth0StateCopyWithImpl<_Auth0State>(this, _$identity);
}

abstract class _Auth0State implements Auth0State {
  const factory _Auth0State(
      {bool isBusy,
      bool isLoggedIn,
      Map<dynamic, dynamic>? data,
      String? errorMessage}) = _$_Auth0State;

  @override
  bool get isBusy;
  @override
  bool get isLoggedIn;
  @override
  Map<dynamic, dynamic>? get data;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$Auth0StateCopyWith<_Auth0State> get copyWith =>
      throw _privateConstructorUsedError;
}
