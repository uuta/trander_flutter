// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'keyword_search_explore_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

KeywordSearchExploreState _$KeywordSearchExploreStateFromJson(
    Map<String, dynamic> json) {
  return _KeywordSearchExploreState.fromJson(json);
}

/// @nodoc
class _$KeywordSearchExploreStateTearOff {
  const _$KeywordSearchExploreStateTearOff();

  _KeywordSearchExploreState call(
      {@JsonKey(name: 'streetview') String? streetview,
      @JsonKey(name: 'googlemap') String? googlemap,
      @JsonKey(name: 'twitter') String? twitter}) {
    return _KeywordSearchExploreState(
      streetview: streetview,
      googlemap: googlemap,
      twitter: twitter,
    );
  }

  KeywordSearchExploreState fromJson(Map<String, Object?> json) {
    return KeywordSearchExploreState.fromJson(json);
  }
}

/// @nodoc
const $KeywordSearchExploreState = _$KeywordSearchExploreStateTearOff();

/// @nodoc
mixin _$KeywordSearchExploreState {
  @JsonKey(name: 'streetview')
  String? get streetview => throw _privateConstructorUsedError;
  @JsonKey(name: 'googlemap')
  String? get googlemap => throw _privateConstructorUsedError;
  @JsonKey(name: 'twitter')
  String? get twitter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KeywordSearchExploreStateCopyWith<KeywordSearchExploreState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeywordSearchExploreStateCopyWith<$Res> {
  factory $KeywordSearchExploreStateCopyWith(KeywordSearchExploreState value,
          $Res Function(KeywordSearchExploreState) then) =
      _$KeywordSearchExploreStateCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'streetview') String? streetview,
      @JsonKey(name: 'googlemap') String? googlemap,
      @JsonKey(name: 'twitter') String? twitter});
}

/// @nodoc
class _$KeywordSearchExploreStateCopyWithImpl<$Res>
    implements $KeywordSearchExploreStateCopyWith<$Res> {
  _$KeywordSearchExploreStateCopyWithImpl(this._value, this._then);

  final KeywordSearchExploreState _value;
  // ignore: unused_field
  final $Res Function(KeywordSearchExploreState) _then;

  @override
  $Res call({
    Object? streetview = freezed,
    Object? googlemap = freezed,
    Object? twitter = freezed,
  }) {
    return _then(_value.copyWith(
      streetview: streetview == freezed
          ? _value.streetview
          : streetview // ignore: cast_nullable_to_non_nullable
              as String?,
      googlemap: googlemap == freezed
          ? _value.googlemap
          : googlemap // ignore: cast_nullable_to_non_nullable
              as String?,
      twitter: twitter == freezed
          ? _value.twitter
          : twitter // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$KeywordSearchExploreStateCopyWith<$Res>
    implements $KeywordSearchExploreStateCopyWith<$Res> {
  factory _$KeywordSearchExploreStateCopyWith(_KeywordSearchExploreState value,
          $Res Function(_KeywordSearchExploreState) then) =
      __$KeywordSearchExploreStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'streetview') String? streetview,
      @JsonKey(name: 'googlemap') String? googlemap,
      @JsonKey(name: 'twitter') String? twitter});
}

/// @nodoc
class __$KeywordSearchExploreStateCopyWithImpl<$Res>
    extends _$KeywordSearchExploreStateCopyWithImpl<$Res>
    implements _$KeywordSearchExploreStateCopyWith<$Res> {
  __$KeywordSearchExploreStateCopyWithImpl(_KeywordSearchExploreState _value,
      $Res Function(_KeywordSearchExploreState) _then)
      : super(_value, (v) => _then(v as _KeywordSearchExploreState));

  @override
  _KeywordSearchExploreState get _value =>
      super._value as _KeywordSearchExploreState;

  @override
  $Res call({
    Object? streetview = freezed,
    Object? googlemap = freezed,
    Object? twitter = freezed,
  }) {
    return _then(_KeywordSearchExploreState(
      streetview: streetview == freezed
          ? _value.streetview
          : streetview // ignore: cast_nullable_to_non_nullable
              as String?,
      googlemap: googlemap == freezed
          ? _value.googlemap
          : googlemap // ignore: cast_nullable_to_non_nullable
              as String?,
      twitter: twitter == freezed
          ? _value.twitter
          : twitter // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_KeywordSearchExploreState implements _KeywordSearchExploreState {
  const _$_KeywordSearchExploreState(
      {@JsonKey(name: 'streetview') this.streetview,
      @JsonKey(name: 'googlemap') this.googlemap,
      @JsonKey(name: 'twitter') this.twitter});

  factory _$_KeywordSearchExploreState.fromJson(Map<String, dynamic> json) =>
      _$$_KeywordSearchExploreStateFromJson(json);

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
    return 'KeywordSearchExploreState(streetview: $streetview, googlemap: $googlemap, twitter: $twitter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _KeywordSearchExploreState &&
            const DeepCollectionEquality()
                .equals(other.streetview, streetview) &&
            const DeepCollectionEquality().equals(other.googlemap, googlemap) &&
            const DeepCollectionEquality().equals(other.twitter, twitter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(streetview),
      const DeepCollectionEquality().hash(googlemap),
      const DeepCollectionEquality().hash(twitter));

  @JsonKey(ignore: true)
  @override
  _$KeywordSearchExploreStateCopyWith<_KeywordSearchExploreState>
      get copyWith =>
          __$KeywordSearchExploreStateCopyWithImpl<_KeywordSearchExploreState>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KeywordSearchExploreStateToJson(this);
  }
}

abstract class _KeywordSearchExploreState implements KeywordSearchExploreState {
  const factory _KeywordSearchExploreState(
          {@JsonKey(name: 'streetview') String? streetview,
          @JsonKey(name: 'googlemap') String? googlemap,
          @JsonKey(name: 'twitter') String? twitter}) =
      _$_KeywordSearchExploreState;

  factory _KeywordSearchExploreState.fromJson(Map<String, dynamic> json) =
      _$_KeywordSearchExploreState.fromJson;

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
  _$KeywordSearchExploreStateCopyWith<_KeywordSearchExploreState>
      get copyWith => throw _privateConstructorUsedError;
}
