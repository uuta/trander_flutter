// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'external_urls_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExternalURLsState _$ExternalURLsStateFromJson(Map<String, dynamic> json) {
  return _ExternalURLsState.fromJson(json);
}

/// @nodoc
mixin _$ExternalURLsState {
  @JsonKey(name: 'streetview')
  String? get streetview => throw _privateConstructorUsedError;
  @JsonKey(name: 'googlemap')
  String? get googlemap => throw _privateConstructorUsedError;
  @JsonKey(name: 'twitter')
  String? get twitter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExternalURLsStateCopyWith<ExternalURLsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExternalURLsStateCopyWith<$Res> {
  factory $ExternalURLsStateCopyWith(
          ExternalURLsState value, $Res Function(ExternalURLsState) then) =
      _$ExternalURLsStateCopyWithImpl<$Res, ExternalURLsState>;
  @useResult
  $Res call(
      {@JsonKey(name: 'streetview') String? streetview,
      @JsonKey(name: 'googlemap') String? googlemap,
      @JsonKey(name: 'twitter') String? twitter});
}

/// @nodoc
class _$ExternalURLsStateCopyWithImpl<$Res, $Val extends ExternalURLsState>
    implements $ExternalURLsStateCopyWith<$Res> {
  _$ExternalURLsStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_ExternalURLsStateCopyWith<$Res>
    implements $ExternalURLsStateCopyWith<$Res> {
  factory _$$_ExternalURLsStateCopyWith(_$_ExternalURLsState value,
          $Res Function(_$_ExternalURLsState) then) =
      __$$_ExternalURLsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'streetview') String? streetview,
      @JsonKey(name: 'googlemap') String? googlemap,
      @JsonKey(name: 'twitter') String? twitter});
}

/// @nodoc
class __$$_ExternalURLsStateCopyWithImpl<$Res>
    extends _$ExternalURLsStateCopyWithImpl<$Res, _$_ExternalURLsState>
    implements _$$_ExternalURLsStateCopyWith<$Res> {
  __$$_ExternalURLsStateCopyWithImpl(
      _$_ExternalURLsState _value, $Res Function(_$_ExternalURLsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? streetview = freezed,
    Object? googlemap = freezed,
    Object? twitter = freezed,
  }) {
    return _then(_$_ExternalURLsState(
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
class _$_ExternalURLsState implements _ExternalURLsState {
  const _$_ExternalURLsState(
      {@JsonKey(name: 'streetview') this.streetview,
      @JsonKey(name: 'googlemap') this.googlemap,
      @JsonKey(name: 'twitter') this.twitter});

  factory _$_ExternalURLsState.fromJson(Map<String, dynamic> json) =>
      _$$_ExternalURLsStateFromJson(json);

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
    return 'ExternalURLsState(streetview: $streetview, googlemap: $googlemap, twitter: $twitter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExternalURLsState &&
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
  _$$_ExternalURLsStateCopyWith<_$_ExternalURLsState> get copyWith =>
      __$$_ExternalURLsStateCopyWithImpl<_$_ExternalURLsState>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExternalURLsStateToJson(
      this,
    );
  }
}

abstract class _ExternalURLsState implements ExternalURLsState {
  const factory _ExternalURLsState(
      {@JsonKey(name: 'streetview') final String? streetview,
      @JsonKey(name: 'googlemap') final String? googlemap,
      @JsonKey(name: 'twitter') final String? twitter}) = _$_ExternalURLsState;

  factory _ExternalURLsState.fromJson(Map<String, dynamic> json) =
      _$_ExternalURLsState.fromJson;

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
  _$$_ExternalURLsStateCopyWith<_$_ExternalURLsState> get copyWith =>
      throw _privateConstructorUsedError;
}
