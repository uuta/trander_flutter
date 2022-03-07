// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'purchase_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PurchaseState _$PurchaseStateFromJson(Map<String, dynamic> json) {
  return _PurchaseState.fromJson(json);
}

/// @nodoc
class _$PurchaseStateTearOff {
  const _$PurchaseStateTearOff();

  _PurchaseState call({int purchaseType = 1}) {
    return _PurchaseState(
      purchaseType: purchaseType,
    );
  }

  PurchaseState fromJson(Map<String, Object?> json) {
    return PurchaseState.fromJson(json);
  }
}

/// @nodoc
const $PurchaseState = _$PurchaseStateTearOff();

/// @nodoc
mixin _$PurchaseState {
  int get purchaseType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchaseStateCopyWith<PurchaseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseStateCopyWith<$Res> {
  factory $PurchaseStateCopyWith(
          PurchaseState value, $Res Function(PurchaseState) then) =
      _$PurchaseStateCopyWithImpl<$Res>;
  $Res call({int purchaseType});
}

/// @nodoc
class _$PurchaseStateCopyWithImpl<$Res>
    implements $PurchaseStateCopyWith<$Res> {
  _$PurchaseStateCopyWithImpl(this._value, this._then);

  final PurchaseState _value;
  // ignore: unused_field
  final $Res Function(PurchaseState) _then;

  @override
  $Res call({
    Object? purchaseType = freezed,
  }) {
    return _then(_value.copyWith(
      purchaseType: purchaseType == freezed
          ? _value.purchaseType
          : purchaseType // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$PurchaseStateCopyWith<$Res>
    implements $PurchaseStateCopyWith<$Res> {
  factory _$PurchaseStateCopyWith(
          _PurchaseState value, $Res Function(_PurchaseState) then) =
      __$PurchaseStateCopyWithImpl<$Res>;
  @override
  $Res call({int purchaseType});
}

/// @nodoc
class __$PurchaseStateCopyWithImpl<$Res>
    extends _$PurchaseStateCopyWithImpl<$Res>
    implements _$PurchaseStateCopyWith<$Res> {
  __$PurchaseStateCopyWithImpl(
      _PurchaseState _value, $Res Function(_PurchaseState) _then)
      : super(_value, (v) => _then(v as _PurchaseState));

  @override
  _PurchaseState get _value => super._value as _PurchaseState;

  @override
  $Res call({
    Object? purchaseType = freezed,
  }) {
    return _then(_PurchaseState(
      purchaseType: purchaseType == freezed
          ? _value.purchaseType
          : purchaseType // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PurchaseState implements _PurchaseState {
  const _$_PurchaseState({this.purchaseType = 1});

  factory _$_PurchaseState.fromJson(Map<String, dynamic> json) =>
      _$$_PurchaseStateFromJson(json);

  @JsonKey()
  @override
  final int purchaseType;

  @override
  String toString() {
    return 'PurchaseState(purchaseType: $purchaseType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PurchaseState &&
            const DeepCollectionEquality()
                .equals(other.purchaseType, purchaseType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(purchaseType));

  @JsonKey(ignore: true)
  @override
  _$PurchaseStateCopyWith<_PurchaseState> get copyWith =>
      __$PurchaseStateCopyWithImpl<_PurchaseState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PurchaseStateToJson(this);
  }
}

abstract class _PurchaseState implements PurchaseState {
  const factory _PurchaseState({int purchaseType}) = _$_PurchaseState;

  factory _PurchaseState.fromJson(Map<String, dynamic> json) =
      _$_PurchaseState.fromJson;

  @override
  int get purchaseType;
  @override
  @JsonKey(ignore: true)
  _$PurchaseStateCopyWith<_PurchaseState> get copyWith =>
      throw _privateConstructorUsedError;
}
