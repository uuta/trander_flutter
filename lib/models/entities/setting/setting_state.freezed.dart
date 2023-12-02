// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'setting_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SettingState _$SettingStateFromJson(Map<String, dynamic> json) {
  return _SettingState.fromJson(json);
}

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
      _$SettingStateCopyWithImpl<$Res, SettingState>;
  @useResult
  $Res call(
      {@JsonKey(name: 'minDistance') int minDistance,
      @JsonKey(name: 'maxDistance') int maxDistance,
      @JsonKey(name: 'directionType') int directionType});
}

/// @nodoc
class _$SettingStateCopyWithImpl<$Res, $Val extends SettingState>
    implements $SettingStateCopyWith<$Res> {
  _$SettingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minDistance = null,
    Object? maxDistance = null,
    Object? directionType = null,
  }) {
    return _then(_value.copyWith(
      minDistance: null == minDistance
          ? _value.minDistance
          : minDistance // ignore: cast_nullable_to_non_nullable
              as int,
      maxDistance: null == maxDistance
          ? _value.maxDistance
          : maxDistance // ignore: cast_nullable_to_non_nullable
              as int,
      directionType: null == directionType
          ? _value.directionType
          : directionType // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettingStateImplCopyWith<$Res>
    implements $SettingStateCopyWith<$Res> {
  factory _$$SettingStateImplCopyWith(
          _$SettingStateImpl value, $Res Function(_$SettingStateImpl) then) =
      __$$SettingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'minDistance') int minDistance,
      @JsonKey(name: 'maxDistance') int maxDistance,
      @JsonKey(name: 'directionType') int directionType});
}

/// @nodoc
class __$$SettingStateImplCopyWithImpl<$Res>
    extends _$SettingStateCopyWithImpl<$Res, _$SettingStateImpl>
    implements _$$SettingStateImplCopyWith<$Res> {
  __$$SettingStateImplCopyWithImpl(
      _$SettingStateImpl _value, $Res Function(_$SettingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minDistance = null,
    Object? maxDistance = null,
    Object? directionType = null,
  }) {
    return _then(_$SettingStateImpl(
      minDistance: null == minDistance
          ? _value.minDistance
          : minDistance // ignore: cast_nullable_to_non_nullable
              as int,
      maxDistance: null == maxDistance
          ? _value.maxDistance
          : maxDistance // ignore: cast_nullable_to_non_nullable
              as int,
      directionType: null == directionType
          ? _value.directionType
          : directionType // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SettingStateImpl implements _SettingState {
  const _$SettingStateImpl(
      {@JsonKey(name: 'minDistance') this.minDistance = 0,
      @JsonKey(name: 'maxDistance') this.maxDistance = 100,
      @JsonKey(name: 'directionType') this.directionType = 0});

  factory _$SettingStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$SettingStateImplFromJson(json);

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
            other is _$SettingStateImpl &&
            (identical(other.minDistance, minDistance) ||
                other.minDistance == minDistance) &&
            (identical(other.maxDistance, maxDistance) ||
                other.maxDistance == maxDistance) &&
            (identical(other.directionType, directionType) ||
                other.directionType == directionType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, minDistance, maxDistance, directionType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingStateImplCopyWith<_$SettingStateImpl> get copyWith =>
      __$$SettingStateImplCopyWithImpl<_$SettingStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SettingStateImplToJson(
      this,
    );
  }
}

abstract class _SettingState implements SettingState {
  const factory _SettingState(
          {@JsonKey(name: 'minDistance') final int minDistance,
          @JsonKey(name: 'maxDistance') final int maxDistance,
          @JsonKey(name: 'directionType') final int directionType}) =
      _$SettingStateImpl;

  factory _SettingState.fromJson(Map<String, dynamic> json) =
      _$SettingStateImpl.fromJson;

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
  _$$SettingStateImplCopyWith<_$SettingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
