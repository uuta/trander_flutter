// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'city_result_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CityResultStateTearOff {
  const _$CityResultStateTearOff();

  _CityResultState call(
      {bool isBusy = false,
      CityState? data,
      bool isError = false,
      String? errorMessage}) {
    return _CityResultState(
      isBusy: isBusy,
      data: data,
      isError: isError,
      errorMessage: errorMessage,
    );
  }
}

/// @nodoc
const $CityResultState = _$CityResultStateTearOff();

/// @nodoc
mixin _$CityResultState {
  bool get isBusy => throw _privateConstructorUsedError;
  CityState? get data => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CityResultStateCopyWith<CityResultState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityResultStateCopyWith<$Res> {
  factory $CityResultStateCopyWith(
          CityResultState value, $Res Function(CityResultState) then) =
      _$CityResultStateCopyWithImpl<$Res>;
  $Res call({bool isBusy, CityState? data, bool isError, String? errorMessage});

  $CityStateCopyWith<$Res>? get data;
}

/// @nodoc
class _$CityResultStateCopyWithImpl<$Res>
    implements $CityResultStateCopyWith<$Res> {
  _$CityResultStateCopyWithImpl(this._value, this._then);

  final CityResultState _value;
  // ignore: unused_field
  final $Res Function(CityResultState) _then;

  @override
  $Res call({
    Object? isBusy = freezed,
    Object? data = freezed,
    Object? isError = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      isBusy: isBusy == freezed
          ? _value.isBusy
          : isBusy // ignore: cast_nullable_to_non_nullable
              as bool,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CityState?,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $CityStateCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $CityStateCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$CityResultStateCopyWith<$Res>
    implements $CityResultStateCopyWith<$Res> {
  factory _$CityResultStateCopyWith(
          _CityResultState value, $Res Function(_CityResultState) then) =
      __$CityResultStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isBusy, CityState? data, bool isError, String? errorMessage});

  @override
  $CityStateCopyWith<$Res>? get data;
}

/// @nodoc
class __$CityResultStateCopyWithImpl<$Res>
    extends _$CityResultStateCopyWithImpl<$Res>
    implements _$CityResultStateCopyWith<$Res> {
  __$CityResultStateCopyWithImpl(
      _CityResultState _value, $Res Function(_CityResultState) _then)
      : super(_value, (v) => _then(v as _CityResultState));

  @override
  _CityResultState get _value => super._value as _CityResultState;

  @override
  $Res call({
    Object? isBusy = freezed,
    Object? data = freezed,
    Object? isError = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_CityResultState(
      isBusy: isBusy == freezed
          ? _value.isBusy
          : isBusy // ignore: cast_nullable_to_non_nullable
              as bool,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CityState?,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_CityResultState implements _CityResultState {
  const _$_CityResultState(
      {this.isBusy = false,
      this.data,
      this.isError = false,
      this.errorMessage});

  @JsonKey()
  @override
  final bool isBusy;
  @override
  final CityState? data;
  @JsonKey()
  @override
  final bool isError;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'CityResultState(isBusy: $isBusy, data: $data, isError: $isError, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CityResultState &&
            const DeepCollectionEquality().equals(other.isBusy, isBusy) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.isError, isError) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isBusy),
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(isError),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$CityResultStateCopyWith<_CityResultState> get copyWith =>
      __$CityResultStateCopyWithImpl<_CityResultState>(this, _$identity);
}

abstract class _CityResultState implements CityResultState {
  const factory _CityResultState(
      {bool isBusy,
      CityState? data,
      bool isError,
      String? errorMessage}) = _$_CityResultState;

  @override
  bool get isBusy;
  @override
  CityState? get data;
  @override
  bool get isError;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$CityResultStateCopyWith<_CityResultState> get copyWith =>
      throw _privateConstructorUsedError;
}
