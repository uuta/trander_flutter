// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'setting_result_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SettingResultStateTearOff {
  const _$SettingResultStateTearOff();

  _SettingResultState<T> call<T>(
      {bool isBusy = false, Result<dynamic>? result}) {
    return _SettingResultState<T>(
      isBusy: isBusy,
      result: result,
    );
  }
}

/// @nodoc
const $SettingResultState = _$SettingResultStateTearOff();

/// @nodoc
mixin _$SettingResultState<T> {
  bool get isBusy => throw _privateConstructorUsedError;
  Result<dynamic>? get result => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingResultStateCopyWith<T, SettingResultState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingResultStateCopyWith<T, $Res> {
  factory $SettingResultStateCopyWith(SettingResultState<T> value,
          $Res Function(SettingResultState<T>) then) =
      _$SettingResultStateCopyWithImpl<T, $Res>;
  $Res call({bool isBusy, Result<dynamic>? result});

  $ResultCopyWith<dynamic, $Res>? get result;
}

/// @nodoc
class _$SettingResultStateCopyWithImpl<T, $Res>
    implements $SettingResultStateCopyWith<T, $Res> {
  _$SettingResultStateCopyWithImpl(this._value, this._then);

  final SettingResultState<T> _value;
  // ignore: unused_field
  final $Res Function(SettingResultState<T>) _then;

  @override
  $Res call({
    Object? isBusy = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      isBusy: isBusy == freezed
          ? _value.isBusy
          : isBusy // ignore: cast_nullable_to_non_nullable
              as bool,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result<dynamic>?,
    ));
  }

  @override
  $ResultCopyWith<dynamic, $Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $ResultCopyWith<dynamic, $Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc
abstract class _$SettingResultStateCopyWith<T, $Res>
    implements $SettingResultStateCopyWith<T, $Res> {
  factory _$SettingResultStateCopyWith(_SettingResultState<T> value,
          $Res Function(_SettingResultState<T>) then) =
      __$SettingResultStateCopyWithImpl<T, $Res>;
  @override
  $Res call({bool isBusy, Result<dynamic>? result});

  @override
  $ResultCopyWith<dynamic, $Res>? get result;
}

/// @nodoc
class __$SettingResultStateCopyWithImpl<T, $Res>
    extends _$SettingResultStateCopyWithImpl<T, $Res>
    implements _$SettingResultStateCopyWith<T, $Res> {
  __$SettingResultStateCopyWithImpl(_SettingResultState<T> _value,
      $Res Function(_SettingResultState<T>) _then)
      : super(_value, (v) => _then(v as _SettingResultState<T>));

  @override
  _SettingResultState<T> get _value => super._value as _SettingResultState<T>;

  @override
  $Res call({
    Object? isBusy = freezed,
    Object? result = freezed,
  }) {
    return _then(_SettingResultState<T>(
      isBusy: isBusy == freezed
          ? _value.isBusy
          : isBusy // ignore: cast_nullable_to_non_nullable
              as bool,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result<dynamic>?,
    ));
  }
}

/// @nodoc

class _$_SettingResultState<T>
    with DiagnosticableTreeMixin
    implements _SettingResultState<T> {
  const _$_SettingResultState({this.isBusy = false, this.result});

  @JsonKey()
  @override
  final bool isBusy;
  @override
  final Result<dynamic>? result;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingResultState<$T>(isBusy: $isBusy, result: $result)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SettingResultState<$T>'))
      ..add(DiagnosticsProperty('isBusy', isBusy))
      ..add(DiagnosticsProperty('result', result));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SettingResultState<T> &&
            const DeepCollectionEquality().equals(other.isBusy, isBusy) &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isBusy),
      const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  _$SettingResultStateCopyWith<T, _SettingResultState<T>> get copyWith =>
      __$SettingResultStateCopyWithImpl<T, _SettingResultState<T>>(
          this, _$identity);
}

abstract class _SettingResultState<T> implements SettingResultState<T> {
  const factory _SettingResultState({bool isBusy, Result<dynamic>? result}) =
      _$_SettingResultState<T>;

  @override
  bool get isBusy;
  @override
  Result<dynamic>? get result;
  @override
  @JsonKey(ignore: true)
  _$SettingResultStateCopyWith<T, _SettingResultState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
