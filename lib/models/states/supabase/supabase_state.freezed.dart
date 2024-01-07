// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'supabase_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SupabaseState {
  bool get isBusy => throw _privateConstructorUsedError;
  SupabaseDataState get data => throw _privateConstructorUsedError;
  String? get idToken => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SupabaseStateCopyWith<SupabaseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupabaseStateCopyWith<$Res> {
  factory $SupabaseStateCopyWith(
          SupabaseState value, $Res Function(SupabaseState) then) =
      _$SupabaseStateCopyWithImpl<$Res, SupabaseState>;
  @useResult
  $Res call(
      {bool isBusy,
      SupabaseDataState data,
      String? idToken,
      String? errorMessage});

  $SupabaseDataStateCopyWith<$Res> get data;
}

/// @nodoc
class _$SupabaseStateCopyWithImpl<$Res, $Val extends SupabaseState>
    implements $SupabaseStateCopyWith<$Res> {
  _$SupabaseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isBusy = null,
    Object? data = null,
    Object? idToken = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      isBusy: null == isBusy
          ? _value.isBusy
          : isBusy // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SupabaseDataState,
      idToken: freezed == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SupabaseDataStateCopyWith<$Res> get data {
    return $SupabaseDataStateCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SupabaseStateCopyWith<$Res>
    implements $SupabaseStateCopyWith<$Res> {
  factory _$$_SupabaseStateCopyWith(
          _$_SupabaseState value, $Res Function(_$_SupabaseState) then) =
      __$$_SupabaseStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isBusy,
      SupabaseDataState data,
      String? idToken,
      String? errorMessage});

  @override
  $SupabaseDataStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_SupabaseStateCopyWithImpl<$Res>
    extends _$SupabaseStateCopyWithImpl<$Res, _$_SupabaseState>
    implements _$$_SupabaseStateCopyWith<$Res> {
  __$$_SupabaseStateCopyWithImpl(
      _$_SupabaseState _value, $Res Function(_$_SupabaseState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isBusy = null,
    Object? data = null,
    Object? idToken = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_SupabaseState(
      isBusy: null == isBusy
          ? _value.isBusy
          : isBusy // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SupabaseDataState,
      idToken: freezed == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SupabaseState implements _SupabaseState {
  const _$_SupabaseState(
      {this.isBusy = false,
      required this.data,
      this.idToken,
      this.errorMessage});

  @override
  @JsonKey()
  final bool isBusy;
  @override
  final SupabaseDataState data;
  @override
  final String? idToken;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'SupabaseState(isBusy: $isBusy, data: $data, idToken: $idToken, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SupabaseState &&
            (identical(other.isBusy, isBusy) || other.isBusy == isBusy) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.idToken, idToken) || other.idToken == idToken) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isBusy, data, idToken, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SupabaseStateCopyWith<_$_SupabaseState> get copyWith =>
      __$$_SupabaseStateCopyWithImpl<_$_SupabaseState>(this, _$identity);
}

abstract class _SupabaseState implements SupabaseState {
  const factory _SupabaseState(
      {final bool isBusy,
      required final SupabaseDataState data,
      final String? idToken,
      final String? errorMessage}) = _$_SupabaseState;

  @override
  bool get isBusy;
  @override
  SupabaseDataState get data;
  @override
  String? get idToken;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_SupabaseStateCopyWith<_$_SupabaseState> get copyWith =>
      throw _privateConstructorUsedError;
}
