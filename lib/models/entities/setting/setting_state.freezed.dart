// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'setting_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SettingState _$SettingStateFromJson(Map<String, dynamic> json) {
  return _SettingState.fromJson(json);
}

/// @nodoc
class _$SettingStateTearOff {
  const _$SettingStateTearOff();

  _SettingState call(
      {@JsonKey(name: 'minDistance') int minDistance = 0,
      @JsonKey(name: 'maxDistance') int maxDistance = 100,
      @JsonKey(name: 'directionType') int directionType = 0}) {
    return _SettingState(
      minDistance: minDistance,
      maxDistance: maxDistance,
      directionType: directionType,
    );
  }

  SettingState fromJson(Map<String, Object?> json) {
    return SettingState.fromJson(json);
  }
}

/// @nodoc
const $SettingState = _$SettingStateTearOff();

/// @nodoc
mixin _$SettingState {
  @JsonKey(name: 'minDistance')
  int get minDistance => throw _privateConstructorUsedError;
  @JsonKey(name: 'maxDistance')
  int get maxDistance => throw _privateConstructorUsedError;
  @JsonKey(name: 'directionType')
  int get directionType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SettingStateCopyWith<SettingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingStateCopyWith<$Res> {
  factory $SettingStateCopyWith(
          SettingState value, $Res Function(SettingState) then) =
      _$SettingStateCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'minDistance') int minDistance,
      @JsonKey(name: 'maxDistance') int maxDistance,
      @JsonKey(name: 'directionType') int directionType});
}

/// @nodoc
class _$SettingStateCopyWithImpl<$Res> implements $SettingStateCopyWith<$Res> {
  _$SettingStateCopyWithImpl(this._value, this._then);

  final SettingState _value;
  // ignore: unused_field
  final $Res Function(SettingState) _then;

  @override
  $Res call({
    Object? minDistance = freezed,
    Object? maxDistance = freezed,
    Object? directionType = freezed,
  }) {
    return _then(_value.copyWith(
      minDistance: minDistance == freezed
          ? _value.minDistance
          : minDistance // ignore: cast_nullable_to_non_nullable
              as int,
      maxDistance: maxDistance == freezed
          ? _value.maxDistance
          : maxDistance // ignore: cast_nullable_to_non_nullable
              as int,
      directionType: directionType == freezed
          ? _value.directionType
          : directionType // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$SettingStateCopyWith<$Res>
    implements $SettingStateCopyWith<$Res> {
  factory _$SettingStateCopyWith(
          _SettingState value, $Res Function(_SettingState) then) =
      __$SettingStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'minDistance') int minDistance,
      @JsonKey(name: 'maxDistance') int maxDistance,
      @JsonKey(name: 'directionType') int directionType});
}

/// @nodoc
class __$SettingStateCopyWithImpl<$Res> extends _$SettingStateCopyWithImpl<$Res>
    implements _$SettingStateCopyWith<$Res> {
  __$SettingStateCopyWithImpl(
      _SettingState _value, $Res Function(_SettingState) _then)
      : super(_value, (v) => _then(v as _SettingState));

  @override
  _SettingState get _value => super._value as _SettingState;

  @override
  $Res call({
    Object? minDistance = freezed,
    Object? maxDistance = freezed,
    Object? directionType = freezed,
  }) {
    return _then(_SettingState(
      minDistance: minDistance == freezed
          ? _value.minDistance
          : minDistance // ignore: cast_nullable_to_non_nullable
              as int,
      maxDistance: maxDistance == freezed
          ? _value.maxDistance
          : maxDistance // ignore: cast_nullable_to_non_nullable
              as int,
      directionType: directionType == freezed
          ? _value.directionType
          : directionType // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SettingState implements _SettingState {
  const _$_SettingState(
      {@JsonKey(name: 'minDistance') this.minDistance = 0,
      @JsonKey(name: 'maxDistance') this.maxDistance = 100,
      @JsonKey(name: 'directionType') this.directionType = 0});

  factory _$_SettingState.fromJson(Map<String, dynamic> json) =>
      _$$_SettingStateFromJson(json);

  @override
  @JsonKey(name: 'minDistance')
  final int minDistance;
  @override
  @JsonKey(name: 'maxDistance')
  final int maxDistance;
  @override
  @JsonKey(name: 'directionType')
  final int directionType;

  @override
  String toString() {
    return 'SettingState(minDistance: $minDistance, maxDistance: $maxDistance, directionType: $directionType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SettingState &&
            const DeepCollectionEquality()
                .equals(other.minDistance, minDistance) &&
            const DeepCollectionEquality()
                .equals(other.maxDistance, maxDistance) &&
            const DeepCollectionEquality()
                .equals(other.directionType, directionType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(minDistance),
      const DeepCollectionEquality().hash(maxDistance),
      const DeepCollectionEquality().hash(directionType));

  @JsonKey(ignore: true)
  @override
  _$SettingStateCopyWith<_SettingState> get copyWith =>
      __$SettingStateCopyWithImpl<_SettingState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SettingStateToJson(this);
  }
}

abstract class _SettingState implements SettingState {
  const factory _SettingState(
      {@JsonKey(name: 'minDistance') int minDistance,
      @JsonKey(name: 'maxDistance') int maxDistance,
      @JsonKey(name: 'directionType') int directionType}) = _$_SettingState;

  factory _SettingState.fromJson(Map<String, dynamic> json) =
      _$_SettingState.fromJson;

  @override
  @JsonKey(name: 'minDistance')
  int get minDistance;
  @override
  @JsonKey(name: 'maxDistance')
  int get maxDistance;
  @override
  @JsonKey(name: 'directionType')
  int get directionType;
  @override
  @JsonKey(ignore: true)
  _$SettingStateCopyWith<_SettingState> get copyWith =>
      throw _privateConstructorUsedError;
}
