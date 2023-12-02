// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'purchase_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PurchaseState _$PurchaseStateFromJson(Map<String, dynamic> json) {
  return _PurchaseState.fromJson(json);
}

/// @nodoc
mixin _$PurchaseState {
  bool get isLoading => throw _privateConstructorUsedError;
  int get purchaseType => throw _privateConstructorUsedError;
  Offerings? get offerings => throw _privateConstructorUsedError;
  List<dynamic> get offeringList => throw _privateConstructorUsedError;
  String get currencySign => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
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
      _$PurchaseStateCopyWithImpl<$Res, PurchaseState>;
  @useResult
  $Res call(
      {bool isLoading,
      int purchaseType,
      Offerings? offerings,
      List<dynamic> offeringList,
      String currencySign,
      bool isActive,
      String errorMessage});

  $OfferingsCopyWith<$Res>? get offerings;
}

/// @nodoc
class _$PurchaseStateCopyWithImpl<$Res, $Val extends PurchaseState>
    implements $PurchaseStateCopyWith<$Res> {
  _$PurchaseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? purchaseType = null,
    Object? offerings = freezed,
    Object? offeringList = null,
    Object? currencySign = null,
    Object? isActive = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      purchaseType: null == purchaseType
          ? _value.purchaseType
          : purchaseType // ignore: cast_nullable_to_non_nullable
              as int,
      offerings: freezed == offerings
          ? _value.offerings
          : offerings // ignore: cast_nullable_to_non_nullable
              as Offerings?,
      offeringList: null == offeringList
          ? _value.offeringList
          : offeringList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      currencySign: null == currencySign
          ? _value.currencySign
          : currencySign // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OfferingsCopyWith<$Res>? get offerings {
    if (_value.offerings == null) {
      return null;
    }

    return $OfferingsCopyWith<$Res>(_value.offerings!, (value) {
      return _then(_value.copyWith(offerings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PurchaseStateImplCopyWith<$Res>
    implements $PurchaseStateCopyWith<$Res> {
  factory _$$PurchaseStateImplCopyWith(
          _$PurchaseStateImpl value, $Res Function(_$PurchaseStateImpl) then) =
      __$$PurchaseStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      int purchaseType,
      Offerings? offerings,
      List<dynamic> offeringList,
      String currencySign,
      bool isActive,
      String errorMessage});

  @override
  $OfferingsCopyWith<$Res>? get offerings;
}

/// @nodoc
class __$$PurchaseStateImplCopyWithImpl<$Res>
    extends _$PurchaseStateCopyWithImpl<$Res, _$PurchaseStateImpl>
    implements _$$PurchaseStateImplCopyWith<$Res> {
  __$$PurchaseStateImplCopyWithImpl(
      _$PurchaseStateImpl _value, $Res Function(_$PurchaseStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? purchaseType = null,
    Object? offerings = freezed,
    Object? offeringList = null,
    Object? currencySign = null,
    Object? isActive = null,
    Object? errorMessage = null,
  }) {
    return _then(_$PurchaseStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      purchaseType: null == purchaseType
          ? _value.purchaseType
          : purchaseType // ignore: cast_nullable_to_non_nullable
              as int,
      offerings: freezed == offerings
          ? _value.offerings
          : offerings // ignore: cast_nullable_to_non_nullable
              as Offerings?,
      offeringList: null == offeringList
          ? _value._offeringList
          : offeringList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      currencySign: null == currencySign
          ? _value.currencySign
          : currencySign // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PurchaseStateImpl implements _PurchaseState {
  const _$PurchaseStateImpl(
      {this.isLoading = false,
      this.purchaseType = 1,
      this.offerings,
      final List<dynamic> offeringList = const [],
      this.currencySign = '',
      this.isActive = false,
      this.errorMessage = ''})
      : _offeringList = offeringList;

  factory _$PurchaseStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$PurchaseStateImplFromJson(json);

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final int purchaseType;
  @override
  final Offerings? offerings;
  final List<dynamic> _offeringList;
  @override
  @JsonKey()
  List<dynamic> get offeringList {
    if (_offeringList is EqualUnmodifiableListView) return _offeringList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_offeringList);
  }

  @override
  @JsonKey()
  final String currencySign;
  @override
  @JsonKey()
  final bool isActive;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'PurchaseState(isLoading: $isLoading, purchaseType: $purchaseType, offerings: $offerings, offeringList: $offeringList, currencySign: $currencySign, isActive: $isActive, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurchaseStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.purchaseType, purchaseType) ||
                other.purchaseType == purchaseType) &&
            (identical(other.offerings, offerings) ||
                other.offerings == offerings) &&
            const DeepCollectionEquality()
                .equals(other._offeringList, _offeringList) &&
            (identical(other.currencySign, currencySign) ||
                other.currencySign == currencySign) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      purchaseType,
      offerings,
      const DeepCollectionEquality().hash(_offeringList),
      currencySign,
      isActive,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PurchaseStateImplCopyWith<_$PurchaseStateImpl> get copyWith =>
      __$$PurchaseStateImplCopyWithImpl<_$PurchaseStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PurchaseStateImplToJson(
      this,
    );
  }
}

abstract class _PurchaseState implements PurchaseState {
  const factory _PurchaseState(
      {final bool isLoading,
      final int purchaseType,
      final Offerings? offerings,
      final List<dynamic> offeringList,
      final String currencySign,
      final bool isActive,
      final String errorMessage}) = _$PurchaseStateImpl;

  factory _PurchaseState.fromJson(Map<String, dynamic> json) =
      _$PurchaseStateImpl.fromJson;

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
  bool get isActive;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$PurchaseStateImplCopyWith<_$PurchaseStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
