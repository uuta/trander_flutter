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

  _PurchaseState call(
      {bool isLoading = false,
      int purchaseType = 1,
      Offerings? offerings,
      List<dynamic> offeringList = const [],
      String currencySign = '',
      String errorMessage = ''}) {
    return _PurchaseState(
      isLoading: isLoading,
      purchaseType: purchaseType,
      offerings: offerings,
      offeringList: offeringList,
      currencySign: currencySign,
      errorMessage: errorMessage,
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
  bool get isLoading => throw _privateConstructorUsedError;
  int get purchaseType => throw _privateConstructorUsedError;
  Offerings? get offerings => throw _privateConstructorUsedError;
  List<dynamic> get offeringList => throw _privateConstructorUsedError;
  String get currencySign => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

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
  $Res call(
      {bool isLoading,
      int purchaseType,
      Offerings? offerings,
      List<dynamic> offeringList,
      String currencySign,
      String errorMessage});

  $OfferingsCopyWith<$Res>? get offerings;
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
    Object? isLoading = freezed,
    Object? purchaseType = freezed,
    Object? offerings = freezed,
    Object? offeringList = freezed,
    Object? currencySign = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      purchaseType: purchaseType == freezed
          ? _value.purchaseType
          : purchaseType // ignore: cast_nullable_to_non_nullable
              as int,
      offerings: offerings == freezed
          ? _value.offerings
          : offerings // ignore: cast_nullable_to_non_nullable
              as Offerings?,
      offeringList: offeringList == freezed
          ? _value.offeringList
          : offeringList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      currencySign: currencySign == freezed
          ? _value.currencySign
          : currencySign // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $OfferingsCopyWith<$Res>? get offerings {
    if (_value.offerings == null) {
      return null;
    }

    return $OfferingsCopyWith<$Res>(_value.offerings!, (value) {
      return _then(_value.copyWith(offerings: value));
    });
  }
}

/// @nodoc
abstract class _$PurchaseStateCopyWith<$Res>
    implements $PurchaseStateCopyWith<$Res> {
  factory _$PurchaseStateCopyWith(
          _PurchaseState value, $Res Function(_PurchaseState) then) =
      __$PurchaseStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      int purchaseType,
      Offerings? offerings,
      List<dynamic> offeringList,
      String currencySign,
      String errorMessage});

  @override
  $OfferingsCopyWith<$Res>? get offerings;
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
    Object? isLoading = freezed,
    Object? purchaseType = freezed,
    Object? offerings = freezed,
    Object? offeringList = freezed,
    Object? currencySign = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_PurchaseState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      purchaseType: purchaseType == freezed
          ? _value.purchaseType
          : purchaseType // ignore: cast_nullable_to_non_nullable
              as int,
      offerings: offerings == freezed
          ? _value.offerings
          : offerings // ignore: cast_nullable_to_non_nullable
              as Offerings?,
      offeringList: offeringList == freezed
          ? _value.offeringList
          : offeringList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      currencySign: currencySign == freezed
          ? _value.currencySign
          : currencySign // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PurchaseState implements _PurchaseState {
  const _$_PurchaseState(
      {this.isLoading = false,
      this.purchaseType = 1,
      this.offerings,
      this.offeringList = const [],
      this.currencySign = '',
      this.errorMessage = ''});

  factory _$_PurchaseState.fromJson(Map<String, dynamic> json) =>
      _$$_PurchaseStateFromJson(json);

  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final int purchaseType;
  @override
  final Offerings? offerings;
  @JsonKey()
  @override
  final List<dynamic> offeringList;
  @JsonKey()
  @override
  final String currencySign;
  @JsonKey()
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'PurchaseState(isLoading: $isLoading, purchaseType: $purchaseType, offerings: $offerings, offeringList: $offeringList, currencySign: $currencySign, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PurchaseState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.purchaseType, purchaseType) &&
            const DeepCollectionEquality().equals(other.offerings, offerings) &&
            const DeepCollectionEquality()
                .equals(other.offeringList, offeringList) &&
            const DeepCollectionEquality()
                .equals(other.currencySign, currencySign) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(purchaseType),
      const DeepCollectionEquality().hash(offerings),
      const DeepCollectionEquality().hash(offeringList),
      const DeepCollectionEquality().hash(currencySign),
      const DeepCollectionEquality().hash(errorMessage));

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
  const factory _PurchaseState(
      {bool isLoading,
      int purchaseType,
      Offerings? offerings,
      List<dynamic> offeringList,
      String currencySign,
      String errorMessage}) = _$_PurchaseState;

  factory _PurchaseState.fromJson(Map<String, dynamic> json) =
      _$_PurchaseState.fromJson;

  @override
  bool get isLoading;
  @override
  int get purchaseType;
  @override
  Offerings? get offerings;
  @override
  List<dynamic> get offeringList;
  @override
  String get currencySign;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$PurchaseStateCopyWith<_PurchaseState> get copyWith =>
      throw _privateConstructorUsedError;
}
