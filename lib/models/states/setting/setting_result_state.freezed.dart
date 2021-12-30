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

  _SettingResultState call(
      {bool isBusy = false,
      SettingState? data,
      bool isError = false,
      String? errorMessage}) {
    return _SettingResultState(
      isBusy: isBusy,
      data: data,
      isError: isError,
      errorMessage: errorMessage,
    );
  }
}

/// @nodoc
const $SettingResultState = _$SettingResultStateTearOff();

/// @nodoc
mixin _$SettingResultState {
  bool get isBusy => throw _privateConstructorUsedError;
  SettingState? get data => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingResultStateCopyWith<SettingResultState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingResultStateCopyWith<$Res> {
  factory $SettingResultStateCopyWith(
          SettingResultState value, $Res Function(SettingResultState) then) =
      _$SettingResultStateCopyWithImpl<$Res>;
  $Res call(
      {bool isBusy, SettingState? data, bool isError, String? errorMessage});

  $SettingStateCopyWith<$Res>? get data;
}

/// @nodoc
class _$SettingResultStateCopyWithImpl<$Res>
    implements $SettingResultStateCopyWith<$Res> {
  _$SettingResultStateCopyWithImpl(this._value, this._then);

  final SettingResultState _value;
  // ignore: unused_field
  final $Res Function(SettingResultState) _then;

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
              as SettingState?,
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
  $SettingStateCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $SettingStateCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$SettingResultStateCopyWith<$Res>
    implements $SettingResultStateCopyWith<$Res> {
  factory _$SettingResultStateCopyWith(
          _SettingResultState value, $Res Function(_SettingResultState) then) =
      __$SettingResultStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isBusy, SettingState? data, bool isError, String? errorMessage});

  @override
  $SettingStateCopyWith<$Res>? get data;
}

/// @nodoc
class __$SettingResultStateCopyWithImpl<$Res>
    extends _$SettingResultStateCopyWithImpl<$Res>
    implements _$SettingResultStateCopyWith<$Res> {
  __$SettingResultStateCopyWithImpl(
      _SettingResultState _value, $Res Function(_SettingResultState) _then)
      : super(_value, (v) => _then(v as _SettingResultState));

  @override
  _SettingResultState get _value => super._value as _SettingResultState;

  @override
  $Res call({
    Object? isBusy = freezed,
    Object? data = freezed,
    Object? isError = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_SettingResultState(
      isBusy: isBusy == freezed
          ? _value.isBusy
          : isBusy // ignore: cast_nullable_to_non_nullable
              as bool,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SettingState?,
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

class _$_SettingResultState
    with DiagnosticableTreeMixin
    implements _SettingResultState {
  const _$_SettingResultState(
      {this.isBusy = false,
      this.data,
      this.isError = false,
      this.errorMessage});

  @JsonKey()
  @override
  final bool isBusy;
  @override
  final SettingState? data;
  @JsonKey()
  @override
  final bool isError;
  @override
  final String? errorMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingResultState(isBusy: $isBusy, data: $data, isError: $isError, errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SettingResultState'))
      ..add(DiagnosticsProperty('isBusy', isBusy))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('isError', isError))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SettingResultState &&
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
  _$SettingResultStateCopyWith<_SettingResultState> get copyWith =>
      __$SettingResultStateCopyWithImpl<_SettingResultState>(this, _$identity);
}

abstract class _SettingResultState implements SettingResultState {
  const factory _SettingResultState(
      {bool isBusy,
      SettingState? data,
      bool isError,
      String? errorMessage}) = _$_SettingResultState;

  @override
  bool get isBusy;
  @override
  SettingState? get data;
  @override
  bool get isError;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$SettingResultStateCopyWith<_SettingResultState> get copyWith =>
      throw _privateConstructorUsedError;
}
