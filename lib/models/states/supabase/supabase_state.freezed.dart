// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'supabase_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SupabaseStateTearOff {
  const _$SupabaseStateTearOff();

  _SupabaseState call(
      {bool isBusy = false,
      bool isLoggedIn = false,
      required SupabaseDataState data,
      String? idToken,
      String? errorMessage,
      SupabaseClient? client}) {
    return _SupabaseState(
      isBusy: isBusy,
      isLoggedIn: isLoggedIn,
      data: data,
      idToken: idToken,
      errorMessage: errorMessage,
      client: client,
    );
  }
}

/// @nodoc
const $SupabaseState = _$SupabaseStateTearOff();

/// @nodoc
mixin _$SupabaseState {
  bool get isBusy => throw _privateConstructorUsedError;
  bool get isLoggedIn => throw _privateConstructorUsedError;
  SupabaseDataState get data => throw _privateConstructorUsedError;
  String? get idToken => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  SupabaseClient? get client => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SupabaseStateCopyWith<SupabaseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupabaseStateCopyWith<$Res> {
  factory $SupabaseStateCopyWith(
          SupabaseState value, $Res Function(SupabaseState) then) =
      _$SupabaseStateCopyWithImpl<$Res>;
  $Res call(
      {bool isBusy,
      bool isLoggedIn,
      SupabaseDataState data,
      String? idToken,
      String? errorMessage,
      SupabaseClient? client});

  $SupabaseDataStateCopyWith<$Res> get data;
}

/// @nodoc
class _$SupabaseStateCopyWithImpl<$Res>
    implements $SupabaseStateCopyWith<$Res> {
  _$SupabaseStateCopyWithImpl(this._value, this._then);

  final SupabaseState _value;
  // ignore: unused_field
  final $Res Function(SupabaseState) _then;

  @override
  $Res call({
    Object? isBusy = freezed,
    Object? isLoggedIn = freezed,
    Object? data = freezed,
    Object? idToken = freezed,
    Object? errorMessage = freezed,
    Object? client = freezed,
  }) {
    return _then(_value.copyWith(
      isBusy: isBusy == freezed
          ? _value.isBusy
          : isBusy // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoggedIn: isLoggedIn == freezed
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SupabaseDataState,
      idToken: idToken == freezed
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      client: client == freezed
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as SupabaseClient?,
    ));
  }

  @override
  $SupabaseDataStateCopyWith<$Res> get data {
    return $SupabaseDataStateCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$SupabaseStateCopyWith<$Res>
    implements $SupabaseStateCopyWith<$Res> {
  factory _$SupabaseStateCopyWith(
          _SupabaseState value, $Res Function(_SupabaseState) then) =
      __$SupabaseStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isBusy,
      bool isLoggedIn,
      SupabaseDataState data,
      String? idToken,
      String? errorMessage,
      SupabaseClient? client});

  @override
  $SupabaseDataStateCopyWith<$Res> get data;
}

/// @nodoc
class __$SupabaseStateCopyWithImpl<$Res>
    extends _$SupabaseStateCopyWithImpl<$Res>
    implements _$SupabaseStateCopyWith<$Res> {
  __$SupabaseStateCopyWithImpl(
      _SupabaseState _value, $Res Function(_SupabaseState) _then)
      : super(_value, (v) => _then(v as _SupabaseState));

  @override
  _SupabaseState get _value => super._value as _SupabaseState;

  @override
  $Res call({
    Object? isBusy = freezed,
    Object? isLoggedIn = freezed,
    Object? data = freezed,
    Object? idToken = freezed,
    Object? errorMessage = freezed,
    Object? client = freezed,
  }) {
    return _then(_SupabaseState(
      isBusy: isBusy == freezed
          ? _value.isBusy
          : isBusy // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoggedIn: isLoggedIn == freezed
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SupabaseDataState,
      idToken: idToken == freezed
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      client: client == freezed
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as SupabaseClient?,
    ));
  }
}

/// @nodoc

class _$_SupabaseState with DiagnosticableTreeMixin implements _SupabaseState {
  const _$_SupabaseState(
      {this.isBusy = false,
      this.isLoggedIn = false,
      required this.data,
      this.idToken,
      this.errorMessage,
      this.client});

  @JsonKey()
  @override
  final bool isBusy;
  @JsonKey()
  @override
  final bool isLoggedIn;
  @override
  final SupabaseDataState data;
  @override
  final String? idToken;
  @override
  final String? errorMessage;
  @override
  final SupabaseClient? client;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SupabaseState(isBusy: $isBusy, isLoggedIn: $isLoggedIn, data: $data, idToken: $idToken, errorMessage: $errorMessage, client: $client)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SupabaseState'))
      ..add(DiagnosticsProperty('isBusy', isBusy))
      ..add(DiagnosticsProperty('isLoggedIn', isLoggedIn))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('idToken', idToken))
      ..add(DiagnosticsProperty('errorMessage', errorMessage))
      ..add(DiagnosticsProperty('client', client));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SupabaseState &&
            const DeepCollectionEquality().equals(other.isBusy, isBusy) &&
            const DeepCollectionEquality()
                .equals(other.isLoggedIn, isLoggedIn) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.idToken, idToken) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage) &&
            const DeepCollectionEquality().equals(other.client, client));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isBusy),
      const DeepCollectionEquality().hash(isLoggedIn),
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(idToken),
      const DeepCollectionEquality().hash(errorMessage),
      const DeepCollectionEquality().hash(client));

  @JsonKey(ignore: true)
  @override
  _$SupabaseStateCopyWith<_SupabaseState> get copyWith =>
      __$SupabaseStateCopyWithImpl<_SupabaseState>(this, _$identity);
}

abstract class _SupabaseState implements SupabaseState {
  const factory _SupabaseState(
      {bool isBusy,
      bool isLoggedIn,
      required SupabaseDataState data,
      String? idToken,
      String? errorMessage,
      SupabaseClient? client}) = _$_SupabaseState;

  @override
  bool get isBusy;
  @override
  bool get isLoggedIn;
  @override
  SupabaseDataState get data;
  @override
  String? get idToken;
  @override
  String? get errorMessage;
  @override
  SupabaseClient? get client;
  @override
  @JsonKey(ignore: true)
  _$SupabaseStateCopyWith<_SupabaseState> get copyWith =>
      throw _privateConstructorUsedError;
}
