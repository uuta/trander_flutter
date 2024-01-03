// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_explore_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CityExploreState _$CityExploreStateFromJson(Map<String, dynamic> json) {
  return _CityExploreState.fromJson(json);
}

/// @nodoc
mixin _$CityExploreState {
  @JsonKey(name: 'streetview')
  String? get streetview => throw _privateConstructorUsedError;
  @JsonKey(name: 'googlemap')
  String? get googlemap => throw _privateConstructorUsedError;
  @JsonKey(name: 'twitter')
  String? get twitter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CityExploreStateCopyWith<CityExploreState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityExploreStateCopyWith<$Res> {
  factory $CityExploreStateCopyWith(
          CityExploreState value, $Res Function(CityExploreState) then) =
      _$CityExploreStateCopyWithImpl<$Res, CityExploreState>;
  @useResult
  $Res call(
      {@JsonKey(name: 'streetview') String? streetview,
      @JsonKey(name: 'googlemap') String? googlemap,
      @JsonKey(name: 'twitter') String? twitter});
}

/// @nodoc
class _$CityExploreStateCopyWithImpl<$Res, $Val extends CityExploreState>
    implements $CityExploreStateCopyWith<$Res> {
  _$CityExploreStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? streetview = freezed,
    Object? googlemap = freezed,
    Object? twitter = freezed,
  }) {
    return _then(_value.copyWith(
      streetview: freezed == streetview
          ? _value.streetview
          : streetview // ignore: cast_nullable_to_non_nullable
              as String?,
      googlemap: freezed == googlemap
          ? _value.googlemap
          : googlemap // ignore: cast_nullable_to_non_nullable
              as String?,
      twitter: freezed == twitter
          ? _value.twitter
          : twitter // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CityExploreStateCopyWith<$Res>
    implements $CityExploreStateCopyWith<$Res> {
  factory _$$_CityExploreStateCopyWith(
          _$_CityExploreState value, $Res Function(_$_CityExploreState) then) =
      __$$_CityExploreStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'streetview') String? streetview,
      @JsonKey(name: 'googlemap') String? googlemap,
      @JsonKey(name: 'twitter') String? twitter});
}

/// @nodoc
class __$$_CityExploreStateCopyWithImpl<$Res>
    extends _$CityExploreStateCopyWithImpl<$Res, _$_CityExploreState>
    implements _$$_CityExploreStateCopyWith<$Res> {
  __$$_CityExploreStateCopyWithImpl(
      _$_CityExploreState _value, $Res Function(_$_CityExploreState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? streetview = freezed,
    Object? googlemap = freezed,
    Object? twitter = freezed,
  }) {
    return _then(_$_CityExploreState(
      streetview: freezed == streetview
          ? _value.streetview
          : streetview // ignore: cast_nullable_to_non_nullable
              as String?,
      googlemap: freezed == googlemap
          ? _value.googlemap
          : googlemap // ignore: cast_nullable_to_non_nullable
              as String?,
      twitter: freezed == twitter
          ? _value.twitter
          : twitter // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CityExploreState implements _CityExploreState {
  const _$_CityExploreState(
      {@JsonKey(name: 'streetview') this.streetview,
      @JsonKey(name: 'googlemap') this.googlemap,
      @JsonKey(name: 'twitter') this.twitter});

  factory _$_CityExploreState.fromJson(Map<String, dynamic> json) =>
      _$$_CityExploreStateFromJson(json);

  @override
  @JsonKey(name: 'streetview')
  final String? streetview;
  @override
  @JsonKey(name: 'googlemap')
  final String? googlemap;
  @override
  @JsonKey(name: 'twitter')
  final String? twitter;

  @override
  String toString() {
    return 'CityExploreState(streetview: $streetview, googlemap: $googlemap, twitter: $twitter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CityExploreState &&
            (identical(other.streetview, streetview) ||
                other.streetview == streetview) &&
            (identical(other.googlemap, googlemap) ||
                other.googlemap == googlemap) &&
            (identical(other.twitter, twitter) || other.twitter == twitter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, streetview, googlemap, twitter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CityExploreStateCopyWith<_$_CityExploreState> get copyWith =>
      __$$_CityExploreStateCopyWithImpl<_$_CityExploreState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CityExploreStateToJson(
      this,
    );
  }
}

abstract class _CityExploreState implements CityExploreState {
  const factory _CityExploreState(
      {@JsonKey(name: 'streetview') final String? streetview,
      @JsonKey(name: 'googlemap') final String? googlemap,
      @JsonKey(name: 'twitter') final String? twitter}) = _$_CityExploreState;

  factory _CityExploreState.fromJson(Map<String, dynamic> json) =
      _$_CityExploreState.fromJson;

  @override
  @JsonKey(name: 'streetview')
  String? get streetview;
  @override
  @JsonKey(name: 'googlemap')
  String? get googlemap;
  @override
  @JsonKey(name: 'twitter')
  String? get twitter;
  @override
  @JsonKey(ignore: true)
  _$$_CityExploreStateCopyWith<_$_CityExploreState> get copyWith =>
      throw _privateConstructorUsedError;
}
