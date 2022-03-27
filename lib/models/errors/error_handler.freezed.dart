// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'error_handler.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ErrorHandlerTearOff {
  const _$ErrorHandlerTearOff();

  _RequestCancelled requestCancelled() {
    return const _RequestCancelled();
  }

  _UnauthorisedRequest unauthorisedRequest() {
    return const _UnauthorisedRequest();
  }

  _ExceededRequestLimit exceededRequestLimit() {
    return const _ExceededRequestLimit();
  }

  _RequestError requestError({ApiError? apiError}) {
    return _RequestError(
      apiError: apiError,
    );
  }

  _ServiceUnavailable serviceUnavailable() {
    return const _ServiceUnavailable();
  }

  _SendTimeout sendTimeout() {
    return const _SendTimeout();
  }

  _NoInternetConnection noInternetConnection() {
    return const _NoInternetConnection();
  }

  _EmptyResponse emptyResponse() {
    return const _EmptyResponse();
  }

  _PaymentRequired paymentRequired({ApiError? apiError}) {
    return _PaymentRequired(
      apiError: apiError,
    );
  }

  _UnexpectedError unexpectedError() {
    return const _UnexpectedError();
  }
}

/// @nodoc
const $ErrorHandler = _$ErrorHandlerTearOff();

/// @nodoc
mixin _$ErrorHandler {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestCancelled,
    required TResult Function() unauthorisedRequest,
    required TResult Function() exceededRequestLimit,
    required TResult Function(ApiError? apiError) requestError,
    required TResult Function() serviceUnavailable,
    required TResult Function() sendTimeout,
    required TResult Function() noInternetConnection,
    required TResult Function() emptyResponse,
    required TResult Function(ApiError? apiError) paymentRequired,
    required TResult Function() unexpectedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? requestCancelled,
    TResult Function()? unauthorisedRequest,
    TResult Function()? exceededRequestLimit,
    TResult Function(ApiError? apiError)? requestError,
    TResult Function()? serviceUnavailable,
    TResult Function()? sendTimeout,
    TResult Function()? noInternetConnection,
    TResult Function()? emptyResponse,
    TResult Function(ApiError? apiError)? paymentRequired,
    TResult Function()? unexpectedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestCancelled,
    TResult Function()? unauthorisedRequest,
    TResult Function()? exceededRequestLimit,
    TResult Function(ApiError? apiError)? requestError,
    TResult Function()? serviceUnavailable,
    TResult Function()? sendTimeout,
    TResult Function()? noInternetConnection,
    TResult Function()? emptyResponse,
    TResult Function(ApiError? apiError)? paymentRequired,
    TResult Function()? unexpectedError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestCancelled value) requestCancelled,
    required TResult Function(_UnauthorisedRequest value) unauthorisedRequest,
    required TResult Function(_ExceededRequestLimit value) exceededRequestLimit,
    required TResult Function(_RequestError value) requestError,
    required TResult Function(_ServiceUnavailable value) serviceUnavailable,
    required TResult Function(_SendTimeout value) sendTimeout,
    required TResult Function(_NoInternetConnection value) noInternetConnection,
    required TResult Function(_EmptyResponse value) emptyResponse,
    required TResult Function(_PaymentRequired value) paymentRequired,
    required TResult Function(_UnexpectedError value) unexpectedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RequestCancelled value)? requestCancelled,
    TResult Function(_UnauthorisedRequest value)? unauthorisedRequest,
    TResult Function(_ExceededRequestLimit value)? exceededRequestLimit,
    TResult Function(_RequestError value)? requestError,
    TResult Function(_ServiceUnavailable value)? serviceUnavailable,
    TResult Function(_SendTimeout value)? sendTimeout,
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_EmptyResponse value)? emptyResponse,
    TResult Function(_PaymentRequired value)? paymentRequired,
    TResult Function(_UnexpectedError value)? unexpectedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestCancelled value)? requestCancelled,
    TResult Function(_UnauthorisedRequest value)? unauthorisedRequest,
    TResult Function(_ExceededRequestLimit value)? exceededRequestLimit,
    TResult Function(_RequestError value)? requestError,
    TResult Function(_ServiceUnavailable value)? serviceUnavailable,
    TResult Function(_SendTimeout value)? sendTimeout,
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_EmptyResponse value)? emptyResponse,
    TResult Function(_PaymentRequired value)? paymentRequired,
    TResult Function(_UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorHandlerCopyWith<$Res> {
  factory $ErrorHandlerCopyWith(
          ErrorHandler value, $Res Function(ErrorHandler) then) =
      _$ErrorHandlerCopyWithImpl<$Res>;
}

/// @nodoc
class _$ErrorHandlerCopyWithImpl<$Res> implements $ErrorHandlerCopyWith<$Res> {
  _$ErrorHandlerCopyWithImpl(this._value, this._then);

  final ErrorHandler _value;
  // ignore: unused_field
  final $Res Function(ErrorHandler) _then;
}

/// @nodoc
abstract class _$RequestCancelledCopyWith<$Res> {
  factory _$RequestCancelledCopyWith(
          _RequestCancelled value, $Res Function(_RequestCancelled) then) =
      __$RequestCancelledCopyWithImpl<$Res>;
}

/// @nodoc
class __$RequestCancelledCopyWithImpl<$Res>
    extends _$ErrorHandlerCopyWithImpl<$Res>
    implements _$RequestCancelledCopyWith<$Res> {
  __$RequestCancelledCopyWithImpl(
      _RequestCancelled _value, $Res Function(_RequestCancelled) _then)
      : super(_value, (v) => _then(v as _RequestCancelled));

  @override
  _RequestCancelled get _value => super._value as _RequestCancelled;
}

/// @nodoc

class _$_RequestCancelled extends _RequestCancelled {
  const _$_RequestCancelled() : super._();

  @override
  String toString() {
    return 'ErrorHandler.requestCancelled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _RequestCancelled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestCancelled,
    required TResult Function() unauthorisedRequest,
    required TResult Function() exceededRequestLimit,
    required TResult Function(ApiError? apiError) requestError,
    required TResult Function() serviceUnavailable,
    required TResult Function() sendTimeout,
    required TResult Function() noInternetConnection,
    required TResult Function() emptyResponse,
    required TResult Function(ApiError? apiError) paymentRequired,
    required TResult Function() unexpectedError,
  }) {
    return requestCancelled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? requestCancelled,
    TResult Function()? unauthorisedRequest,
    TResult Function()? exceededRequestLimit,
    TResult Function(ApiError? apiError)? requestError,
    TResult Function()? serviceUnavailable,
    TResult Function()? sendTimeout,
    TResult Function()? noInternetConnection,
    TResult Function()? emptyResponse,
    TResult Function(ApiError? apiError)? paymentRequired,
    TResult Function()? unexpectedError,
  }) {
    return requestCancelled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestCancelled,
    TResult Function()? unauthorisedRequest,
    TResult Function()? exceededRequestLimit,
    TResult Function(ApiError? apiError)? requestError,
    TResult Function()? serviceUnavailable,
    TResult Function()? sendTimeout,
    TResult Function()? noInternetConnection,
    TResult Function()? emptyResponse,
    TResult Function(ApiError? apiError)? paymentRequired,
    TResult Function()? unexpectedError,
    required TResult orElse(),
  }) {
    if (requestCancelled != null) {
      return requestCancelled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestCancelled value) requestCancelled,
    required TResult Function(_UnauthorisedRequest value) unauthorisedRequest,
    required TResult Function(_ExceededRequestLimit value) exceededRequestLimit,
    required TResult Function(_RequestError value) requestError,
    required TResult Function(_ServiceUnavailable value) serviceUnavailable,
    required TResult Function(_SendTimeout value) sendTimeout,
    required TResult Function(_NoInternetConnection value) noInternetConnection,
    required TResult Function(_EmptyResponse value) emptyResponse,
    required TResult Function(_PaymentRequired value) paymentRequired,
    required TResult Function(_UnexpectedError value) unexpectedError,
  }) {
    return requestCancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RequestCancelled value)? requestCancelled,
    TResult Function(_UnauthorisedRequest value)? unauthorisedRequest,
    TResult Function(_ExceededRequestLimit value)? exceededRequestLimit,
    TResult Function(_RequestError value)? requestError,
    TResult Function(_ServiceUnavailable value)? serviceUnavailable,
    TResult Function(_SendTimeout value)? sendTimeout,
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_EmptyResponse value)? emptyResponse,
    TResult Function(_PaymentRequired value)? paymentRequired,
    TResult Function(_UnexpectedError value)? unexpectedError,
  }) {
    return requestCancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestCancelled value)? requestCancelled,
    TResult Function(_UnauthorisedRequest value)? unauthorisedRequest,
    TResult Function(_ExceededRequestLimit value)? exceededRequestLimit,
    TResult Function(_RequestError value)? requestError,
    TResult Function(_ServiceUnavailable value)? serviceUnavailable,
    TResult Function(_SendTimeout value)? sendTimeout,
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_EmptyResponse value)? emptyResponse,
    TResult Function(_PaymentRequired value)? paymentRequired,
    TResult Function(_UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (requestCancelled != null) {
      return requestCancelled(this);
    }
    return orElse();
  }
}

abstract class _RequestCancelled extends ErrorHandler {
  const factory _RequestCancelled() = _$_RequestCancelled;
  const _RequestCancelled._() : super._();
}

/// @nodoc
abstract class _$UnauthorisedRequestCopyWith<$Res> {
  factory _$UnauthorisedRequestCopyWith(_UnauthorisedRequest value,
          $Res Function(_UnauthorisedRequest) then) =
      __$UnauthorisedRequestCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnauthorisedRequestCopyWithImpl<$Res>
    extends _$ErrorHandlerCopyWithImpl<$Res>
    implements _$UnauthorisedRequestCopyWith<$Res> {
  __$UnauthorisedRequestCopyWithImpl(
      _UnauthorisedRequest _value, $Res Function(_UnauthorisedRequest) _then)
      : super(_value, (v) => _then(v as _UnauthorisedRequest));

  @override
  _UnauthorisedRequest get _value => super._value as _UnauthorisedRequest;
}

/// @nodoc

class _$_UnauthorisedRequest extends _UnauthorisedRequest {
  const _$_UnauthorisedRequest() : super._();

  @override
  String toString() {
    return 'ErrorHandler.unauthorisedRequest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _UnauthorisedRequest);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestCancelled,
    required TResult Function() unauthorisedRequest,
    required TResult Function() exceededRequestLimit,
    required TResult Function(ApiError? apiError) requestError,
    required TResult Function() serviceUnavailable,
    required TResult Function() sendTimeout,
    required TResult Function() noInternetConnection,
    required TResult Function() emptyResponse,
    required TResult Function(ApiError? apiError) paymentRequired,
    required TResult Function() unexpectedError,
  }) {
    return unauthorisedRequest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? requestCancelled,
    TResult Function()? unauthorisedRequest,
    TResult Function()? exceededRequestLimit,
    TResult Function(ApiError? apiError)? requestError,
    TResult Function()? serviceUnavailable,
    TResult Function()? sendTimeout,
    TResult Function()? noInternetConnection,
    TResult Function()? emptyResponse,
    TResult Function(ApiError? apiError)? paymentRequired,
    TResult Function()? unexpectedError,
  }) {
    return unauthorisedRequest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestCancelled,
    TResult Function()? unauthorisedRequest,
    TResult Function()? exceededRequestLimit,
    TResult Function(ApiError? apiError)? requestError,
    TResult Function()? serviceUnavailable,
    TResult Function()? sendTimeout,
    TResult Function()? noInternetConnection,
    TResult Function()? emptyResponse,
    TResult Function(ApiError? apiError)? paymentRequired,
    TResult Function()? unexpectedError,
    required TResult orElse(),
  }) {
    if (unauthorisedRequest != null) {
      return unauthorisedRequest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestCancelled value) requestCancelled,
    required TResult Function(_UnauthorisedRequest value) unauthorisedRequest,
    required TResult Function(_ExceededRequestLimit value) exceededRequestLimit,
    required TResult Function(_RequestError value) requestError,
    required TResult Function(_ServiceUnavailable value) serviceUnavailable,
    required TResult Function(_SendTimeout value) sendTimeout,
    required TResult Function(_NoInternetConnection value) noInternetConnection,
    required TResult Function(_EmptyResponse value) emptyResponse,
    required TResult Function(_PaymentRequired value) paymentRequired,
    required TResult Function(_UnexpectedError value) unexpectedError,
  }) {
    return unauthorisedRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RequestCancelled value)? requestCancelled,
    TResult Function(_UnauthorisedRequest value)? unauthorisedRequest,
    TResult Function(_ExceededRequestLimit value)? exceededRequestLimit,
    TResult Function(_RequestError value)? requestError,
    TResult Function(_ServiceUnavailable value)? serviceUnavailable,
    TResult Function(_SendTimeout value)? sendTimeout,
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_EmptyResponse value)? emptyResponse,
    TResult Function(_PaymentRequired value)? paymentRequired,
    TResult Function(_UnexpectedError value)? unexpectedError,
  }) {
    return unauthorisedRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestCancelled value)? requestCancelled,
    TResult Function(_UnauthorisedRequest value)? unauthorisedRequest,
    TResult Function(_ExceededRequestLimit value)? exceededRequestLimit,
    TResult Function(_RequestError value)? requestError,
    TResult Function(_ServiceUnavailable value)? serviceUnavailable,
    TResult Function(_SendTimeout value)? sendTimeout,
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_EmptyResponse value)? emptyResponse,
    TResult Function(_PaymentRequired value)? paymentRequired,
    TResult Function(_UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (unauthorisedRequest != null) {
      return unauthorisedRequest(this);
    }
    return orElse();
  }
}

abstract class _UnauthorisedRequest extends ErrorHandler {
  const factory _UnauthorisedRequest() = _$_UnauthorisedRequest;
  const _UnauthorisedRequest._() : super._();
}

/// @nodoc
abstract class _$ExceededRequestLimitCopyWith<$Res> {
  factory _$ExceededRequestLimitCopyWith(_ExceededRequestLimit value,
          $Res Function(_ExceededRequestLimit) then) =
      __$ExceededRequestLimitCopyWithImpl<$Res>;
}

/// @nodoc
class __$ExceededRequestLimitCopyWithImpl<$Res>
    extends _$ErrorHandlerCopyWithImpl<$Res>
    implements _$ExceededRequestLimitCopyWith<$Res> {
  __$ExceededRequestLimitCopyWithImpl(
      _ExceededRequestLimit _value, $Res Function(_ExceededRequestLimit) _then)
      : super(_value, (v) => _then(v as _ExceededRequestLimit));

  @override
  _ExceededRequestLimit get _value => super._value as _ExceededRequestLimit;
}

/// @nodoc

class _$_ExceededRequestLimit extends _ExceededRequestLimit {
  const _$_ExceededRequestLimit() : super._();

  @override
  String toString() {
    return 'ErrorHandler.exceededRequestLimit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ExceededRequestLimit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestCancelled,
    required TResult Function() unauthorisedRequest,
    required TResult Function() exceededRequestLimit,
    required TResult Function(ApiError? apiError) requestError,
    required TResult Function() serviceUnavailable,
    required TResult Function() sendTimeout,
    required TResult Function() noInternetConnection,
    required TResult Function() emptyResponse,
    required TResult Function(ApiError? apiError) paymentRequired,
    required TResult Function() unexpectedError,
  }) {
    return exceededRequestLimit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? requestCancelled,
    TResult Function()? unauthorisedRequest,
    TResult Function()? exceededRequestLimit,
    TResult Function(ApiError? apiError)? requestError,
    TResult Function()? serviceUnavailable,
    TResult Function()? sendTimeout,
    TResult Function()? noInternetConnection,
    TResult Function()? emptyResponse,
    TResult Function(ApiError? apiError)? paymentRequired,
    TResult Function()? unexpectedError,
  }) {
    return exceededRequestLimit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestCancelled,
    TResult Function()? unauthorisedRequest,
    TResult Function()? exceededRequestLimit,
    TResult Function(ApiError? apiError)? requestError,
    TResult Function()? serviceUnavailable,
    TResult Function()? sendTimeout,
    TResult Function()? noInternetConnection,
    TResult Function()? emptyResponse,
    TResult Function(ApiError? apiError)? paymentRequired,
    TResult Function()? unexpectedError,
    required TResult orElse(),
  }) {
    if (exceededRequestLimit != null) {
      return exceededRequestLimit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestCancelled value) requestCancelled,
    required TResult Function(_UnauthorisedRequest value) unauthorisedRequest,
    required TResult Function(_ExceededRequestLimit value) exceededRequestLimit,
    required TResult Function(_RequestError value) requestError,
    required TResult Function(_ServiceUnavailable value) serviceUnavailable,
    required TResult Function(_SendTimeout value) sendTimeout,
    required TResult Function(_NoInternetConnection value) noInternetConnection,
    required TResult Function(_EmptyResponse value) emptyResponse,
    required TResult Function(_PaymentRequired value) paymentRequired,
    required TResult Function(_UnexpectedError value) unexpectedError,
  }) {
    return exceededRequestLimit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RequestCancelled value)? requestCancelled,
    TResult Function(_UnauthorisedRequest value)? unauthorisedRequest,
    TResult Function(_ExceededRequestLimit value)? exceededRequestLimit,
    TResult Function(_RequestError value)? requestError,
    TResult Function(_ServiceUnavailable value)? serviceUnavailable,
    TResult Function(_SendTimeout value)? sendTimeout,
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_EmptyResponse value)? emptyResponse,
    TResult Function(_PaymentRequired value)? paymentRequired,
    TResult Function(_UnexpectedError value)? unexpectedError,
  }) {
    return exceededRequestLimit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestCancelled value)? requestCancelled,
    TResult Function(_UnauthorisedRequest value)? unauthorisedRequest,
    TResult Function(_ExceededRequestLimit value)? exceededRequestLimit,
    TResult Function(_RequestError value)? requestError,
    TResult Function(_ServiceUnavailable value)? serviceUnavailable,
    TResult Function(_SendTimeout value)? sendTimeout,
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_EmptyResponse value)? emptyResponse,
    TResult Function(_PaymentRequired value)? paymentRequired,
    TResult Function(_UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (exceededRequestLimit != null) {
      return exceededRequestLimit(this);
    }
    return orElse();
  }
}

abstract class _ExceededRequestLimit extends ErrorHandler {
  const factory _ExceededRequestLimit() = _$_ExceededRequestLimit;
  const _ExceededRequestLimit._() : super._();
}

/// @nodoc
abstract class _$RequestErrorCopyWith<$Res> {
  factory _$RequestErrorCopyWith(
          _RequestError value, $Res Function(_RequestError) then) =
      __$RequestErrorCopyWithImpl<$Res>;
  $Res call({ApiError? apiError});

  $ApiErrorCopyWith<$Res>? get apiError;
}

/// @nodoc
class __$RequestErrorCopyWithImpl<$Res> extends _$ErrorHandlerCopyWithImpl<$Res>
    implements _$RequestErrorCopyWith<$Res> {
  __$RequestErrorCopyWithImpl(
      _RequestError _value, $Res Function(_RequestError) _then)
      : super(_value, (v) => _then(v as _RequestError));

  @override
  _RequestError get _value => super._value as _RequestError;

  @override
  $Res call({
    Object? apiError = freezed,
  }) {
    return _then(_RequestError(
      apiError: apiError == freezed
          ? _value.apiError
          : apiError // ignore: cast_nullable_to_non_nullable
              as ApiError?,
    ));
  }

  @override
  $ApiErrorCopyWith<$Res>? get apiError {
    if (_value.apiError == null) {
      return null;
    }

    return $ApiErrorCopyWith<$Res>(_value.apiError!, (value) {
      return _then(_value.copyWith(apiError: value));
    });
  }
}

/// @nodoc

class _$_RequestError extends _RequestError {
  const _$_RequestError({this.apiError}) : super._();

  @override
  final ApiError? apiError;

  @override
  String toString() {
    return 'ErrorHandler.requestError(apiError: $apiError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RequestError &&
            const DeepCollectionEquality().equals(other.apiError, apiError));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(apiError));

  @JsonKey(ignore: true)
  @override
  _$RequestErrorCopyWith<_RequestError> get copyWith =>
      __$RequestErrorCopyWithImpl<_RequestError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestCancelled,
    required TResult Function() unauthorisedRequest,
    required TResult Function() exceededRequestLimit,
    required TResult Function(ApiError? apiError) requestError,
    required TResult Function() serviceUnavailable,
    required TResult Function() sendTimeout,
    required TResult Function() noInternetConnection,
    required TResult Function() emptyResponse,
    required TResult Function(ApiError? apiError) paymentRequired,
    required TResult Function() unexpectedError,
  }) {
    return requestError(apiError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? requestCancelled,
    TResult Function()? unauthorisedRequest,
    TResult Function()? exceededRequestLimit,
    TResult Function(ApiError? apiError)? requestError,
    TResult Function()? serviceUnavailable,
    TResult Function()? sendTimeout,
    TResult Function()? noInternetConnection,
    TResult Function()? emptyResponse,
    TResult Function(ApiError? apiError)? paymentRequired,
    TResult Function()? unexpectedError,
  }) {
    return requestError?.call(apiError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestCancelled,
    TResult Function()? unauthorisedRequest,
    TResult Function()? exceededRequestLimit,
    TResult Function(ApiError? apiError)? requestError,
    TResult Function()? serviceUnavailable,
    TResult Function()? sendTimeout,
    TResult Function()? noInternetConnection,
    TResult Function()? emptyResponse,
    TResult Function(ApiError? apiError)? paymentRequired,
    TResult Function()? unexpectedError,
    required TResult orElse(),
  }) {
    if (requestError != null) {
      return requestError(apiError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestCancelled value) requestCancelled,
    required TResult Function(_UnauthorisedRequest value) unauthorisedRequest,
    required TResult Function(_ExceededRequestLimit value) exceededRequestLimit,
    required TResult Function(_RequestError value) requestError,
    required TResult Function(_ServiceUnavailable value) serviceUnavailable,
    required TResult Function(_SendTimeout value) sendTimeout,
    required TResult Function(_NoInternetConnection value) noInternetConnection,
    required TResult Function(_EmptyResponse value) emptyResponse,
    required TResult Function(_PaymentRequired value) paymentRequired,
    required TResult Function(_UnexpectedError value) unexpectedError,
  }) {
    return requestError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RequestCancelled value)? requestCancelled,
    TResult Function(_UnauthorisedRequest value)? unauthorisedRequest,
    TResult Function(_ExceededRequestLimit value)? exceededRequestLimit,
    TResult Function(_RequestError value)? requestError,
    TResult Function(_ServiceUnavailable value)? serviceUnavailable,
    TResult Function(_SendTimeout value)? sendTimeout,
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_EmptyResponse value)? emptyResponse,
    TResult Function(_PaymentRequired value)? paymentRequired,
    TResult Function(_UnexpectedError value)? unexpectedError,
  }) {
    return requestError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestCancelled value)? requestCancelled,
    TResult Function(_UnauthorisedRequest value)? unauthorisedRequest,
    TResult Function(_ExceededRequestLimit value)? exceededRequestLimit,
    TResult Function(_RequestError value)? requestError,
    TResult Function(_ServiceUnavailable value)? serviceUnavailable,
    TResult Function(_SendTimeout value)? sendTimeout,
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_EmptyResponse value)? emptyResponse,
    TResult Function(_PaymentRequired value)? paymentRequired,
    TResult Function(_UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (requestError != null) {
      return requestError(this);
    }
    return orElse();
  }
}

abstract class _RequestError extends ErrorHandler {
  const factory _RequestError({ApiError? apiError}) = _$_RequestError;
  const _RequestError._() : super._();

  ApiError? get apiError;
  @JsonKey(ignore: true)
  _$RequestErrorCopyWith<_RequestError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ServiceUnavailableCopyWith<$Res> {
  factory _$ServiceUnavailableCopyWith(
          _ServiceUnavailable value, $Res Function(_ServiceUnavailable) then) =
      __$ServiceUnavailableCopyWithImpl<$Res>;
}

/// @nodoc
class __$ServiceUnavailableCopyWithImpl<$Res>
    extends _$ErrorHandlerCopyWithImpl<$Res>
    implements _$ServiceUnavailableCopyWith<$Res> {
  __$ServiceUnavailableCopyWithImpl(
      _ServiceUnavailable _value, $Res Function(_ServiceUnavailable) _then)
      : super(_value, (v) => _then(v as _ServiceUnavailable));

  @override
  _ServiceUnavailable get _value => super._value as _ServiceUnavailable;
}

/// @nodoc

class _$_ServiceUnavailable extends _ServiceUnavailable {
  const _$_ServiceUnavailable() : super._();

  @override
  String toString() {
    return 'ErrorHandler.serviceUnavailable()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ServiceUnavailable);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestCancelled,
    required TResult Function() unauthorisedRequest,
    required TResult Function() exceededRequestLimit,
    required TResult Function(ApiError? apiError) requestError,
    required TResult Function() serviceUnavailable,
    required TResult Function() sendTimeout,
    required TResult Function() noInternetConnection,
    required TResult Function() emptyResponse,
    required TResult Function(ApiError? apiError) paymentRequired,
    required TResult Function() unexpectedError,
  }) {
    return serviceUnavailable();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? requestCancelled,
    TResult Function()? unauthorisedRequest,
    TResult Function()? exceededRequestLimit,
    TResult Function(ApiError? apiError)? requestError,
    TResult Function()? serviceUnavailable,
    TResult Function()? sendTimeout,
    TResult Function()? noInternetConnection,
    TResult Function()? emptyResponse,
    TResult Function(ApiError? apiError)? paymentRequired,
    TResult Function()? unexpectedError,
  }) {
    return serviceUnavailable?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestCancelled,
    TResult Function()? unauthorisedRequest,
    TResult Function()? exceededRequestLimit,
    TResult Function(ApiError? apiError)? requestError,
    TResult Function()? serviceUnavailable,
    TResult Function()? sendTimeout,
    TResult Function()? noInternetConnection,
    TResult Function()? emptyResponse,
    TResult Function(ApiError? apiError)? paymentRequired,
    TResult Function()? unexpectedError,
    required TResult orElse(),
  }) {
    if (serviceUnavailable != null) {
      return serviceUnavailable();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestCancelled value) requestCancelled,
    required TResult Function(_UnauthorisedRequest value) unauthorisedRequest,
    required TResult Function(_ExceededRequestLimit value) exceededRequestLimit,
    required TResult Function(_RequestError value) requestError,
    required TResult Function(_ServiceUnavailable value) serviceUnavailable,
    required TResult Function(_SendTimeout value) sendTimeout,
    required TResult Function(_NoInternetConnection value) noInternetConnection,
    required TResult Function(_EmptyResponse value) emptyResponse,
    required TResult Function(_PaymentRequired value) paymentRequired,
    required TResult Function(_UnexpectedError value) unexpectedError,
  }) {
    return serviceUnavailable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RequestCancelled value)? requestCancelled,
    TResult Function(_UnauthorisedRequest value)? unauthorisedRequest,
    TResult Function(_ExceededRequestLimit value)? exceededRequestLimit,
    TResult Function(_RequestError value)? requestError,
    TResult Function(_ServiceUnavailable value)? serviceUnavailable,
    TResult Function(_SendTimeout value)? sendTimeout,
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_EmptyResponse value)? emptyResponse,
    TResult Function(_PaymentRequired value)? paymentRequired,
    TResult Function(_UnexpectedError value)? unexpectedError,
  }) {
    return serviceUnavailable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestCancelled value)? requestCancelled,
    TResult Function(_UnauthorisedRequest value)? unauthorisedRequest,
    TResult Function(_ExceededRequestLimit value)? exceededRequestLimit,
    TResult Function(_RequestError value)? requestError,
    TResult Function(_ServiceUnavailable value)? serviceUnavailable,
    TResult Function(_SendTimeout value)? sendTimeout,
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_EmptyResponse value)? emptyResponse,
    TResult Function(_PaymentRequired value)? paymentRequired,
    TResult Function(_UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (serviceUnavailable != null) {
      return serviceUnavailable(this);
    }
    return orElse();
  }
}

abstract class _ServiceUnavailable extends ErrorHandler {
  const factory _ServiceUnavailable() = _$_ServiceUnavailable;
  const _ServiceUnavailable._() : super._();
}

/// @nodoc
abstract class _$SendTimeoutCopyWith<$Res> {
  factory _$SendTimeoutCopyWith(
          _SendTimeout value, $Res Function(_SendTimeout) then) =
      __$SendTimeoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$SendTimeoutCopyWithImpl<$Res> extends _$ErrorHandlerCopyWithImpl<$Res>
    implements _$SendTimeoutCopyWith<$Res> {
  __$SendTimeoutCopyWithImpl(
      _SendTimeout _value, $Res Function(_SendTimeout) _then)
      : super(_value, (v) => _then(v as _SendTimeout));

  @override
  _SendTimeout get _value => super._value as _SendTimeout;
}

/// @nodoc

class _$_SendTimeout extends _SendTimeout {
  const _$_SendTimeout() : super._();

  @override
  String toString() {
    return 'ErrorHandler.sendTimeout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SendTimeout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestCancelled,
    required TResult Function() unauthorisedRequest,
    required TResult Function() exceededRequestLimit,
    required TResult Function(ApiError? apiError) requestError,
    required TResult Function() serviceUnavailable,
    required TResult Function() sendTimeout,
    required TResult Function() noInternetConnection,
    required TResult Function() emptyResponse,
    required TResult Function(ApiError? apiError) paymentRequired,
    required TResult Function() unexpectedError,
  }) {
    return sendTimeout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? requestCancelled,
    TResult Function()? unauthorisedRequest,
    TResult Function()? exceededRequestLimit,
    TResult Function(ApiError? apiError)? requestError,
    TResult Function()? serviceUnavailable,
    TResult Function()? sendTimeout,
    TResult Function()? noInternetConnection,
    TResult Function()? emptyResponse,
    TResult Function(ApiError? apiError)? paymentRequired,
    TResult Function()? unexpectedError,
  }) {
    return sendTimeout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestCancelled,
    TResult Function()? unauthorisedRequest,
    TResult Function()? exceededRequestLimit,
    TResult Function(ApiError? apiError)? requestError,
    TResult Function()? serviceUnavailable,
    TResult Function()? sendTimeout,
    TResult Function()? noInternetConnection,
    TResult Function()? emptyResponse,
    TResult Function(ApiError? apiError)? paymentRequired,
    TResult Function()? unexpectedError,
    required TResult orElse(),
  }) {
    if (sendTimeout != null) {
      return sendTimeout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestCancelled value) requestCancelled,
    required TResult Function(_UnauthorisedRequest value) unauthorisedRequest,
    required TResult Function(_ExceededRequestLimit value) exceededRequestLimit,
    required TResult Function(_RequestError value) requestError,
    required TResult Function(_ServiceUnavailable value) serviceUnavailable,
    required TResult Function(_SendTimeout value) sendTimeout,
    required TResult Function(_NoInternetConnection value) noInternetConnection,
    required TResult Function(_EmptyResponse value) emptyResponse,
    required TResult Function(_PaymentRequired value) paymentRequired,
    required TResult Function(_UnexpectedError value) unexpectedError,
  }) {
    return sendTimeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RequestCancelled value)? requestCancelled,
    TResult Function(_UnauthorisedRequest value)? unauthorisedRequest,
    TResult Function(_ExceededRequestLimit value)? exceededRequestLimit,
    TResult Function(_RequestError value)? requestError,
    TResult Function(_ServiceUnavailable value)? serviceUnavailable,
    TResult Function(_SendTimeout value)? sendTimeout,
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_EmptyResponse value)? emptyResponse,
    TResult Function(_PaymentRequired value)? paymentRequired,
    TResult Function(_UnexpectedError value)? unexpectedError,
  }) {
    return sendTimeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestCancelled value)? requestCancelled,
    TResult Function(_UnauthorisedRequest value)? unauthorisedRequest,
    TResult Function(_ExceededRequestLimit value)? exceededRequestLimit,
    TResult Function(_RequestError value)? requestError,
    TResult Function(_ServiceUnavailable value)? serviceUnavailable,
    TResult Function(_SendTimeout value)? sendTimeout,
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_EmptyResponse value)? emptyResponse,
    TResult Function(_PaymentRequired value)? paymentRequired,
    TResult Function(_UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (sendTimeout != null) {
      return sendTimeout(this);
    }
    return orElse();
  }
}

abstract class _SendTimeout extends ErrorHandler {
  const factory _SendTimeout() = _$_SendTimeout;
  const _SendTimeout._() : super._();
}

/// @nodoc
abstract class _$NoInternetConnectionCopyWith<$Res> {
  factory _$NoInternetConnectionCopyWith(_NoInternetConnection value,
          $Res Function(_NoInternetConnection) then) =
      __$NoInternetConnectionCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoInternetConnectionCopyWithImpl<$Res>
    extends _$ErrorHandlerCopyWithImpl<$Res>
    implements _$NoInternetConnectionCopyWith<$Res> {
  __$NoInternetConnectionCopyWithImpl(
      _NoInternetConnection _value, $Res Function(_NoInternetConnection) _then)
      : super(_value, (v) => _then(v as _NoInternetConnection));

  @override
  _NoInternetConnection get _value => super._value as _NoInternetConnection;
}

/// @nodoc

class _$_NoInternetConnection extends _NoInternetConnection {
  const _$_NoInternetConnection() : super._();

  @override
  String toString() {
    return 'ErrorHandler.noInternetConnection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _NoInternetConnection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestCancelled,
    required TResult Function() unauthorisedRequest,
    required TResult Function() exceededRequestLimit,
    required TResult Function(ApiError? apiError) requestError,
    required TResult Function() serviceUnavailable,
    required TResult Function() sendTimeout,
    required TResult Function() noInternetConnection,
    required TResult Function() emptyResponse,
    required TResult Function(ApiError? apiError) paymentRequired,
    required TResult Function() unexpectedError,
  }) {
    return noInternetConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? requestCancelled,
    TResult Function()? unauthorisedRequest,
    TResult Function()? exceededRequestLimit,
    TResult Function(ApiError? apiError)? requestError,
    TResult Function()? serviceUnavailable,
    TResult Function()? sendTimeout,
    TResult Function()? noInternetConnection,
    TResult Function()? emptyResponse,
    TResult Function(ApiError? apiError)? paymentRequired,
    TResult Function()? unexpectedError,
  }) {
    return noInternetConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestCancelled,
    TResult Function()? unauthorisedRequest,
    TResult Function()? exceededRequestLimit,
    TResult Function(ApiError? apiError)? requestError,
    TResult Function()? serviceUnavailable,
    TResult Function()? sendTimeout,
    TResult Function()? noInternetConnection,
    TResult Function()? emptyResponse,
    TResult Function(ApiError? apiError)? paymentRequired,
    TResult Function()? unexpectedError,
    required TResult orElse(),
  }) {
    if (noInternetConnection != null) {
      return noInternetConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestCancelled value) requestCancelled,
    required TResult Function(_UnauthorisedRequest value) unauthorisedRequest,
    required TResult Function(_ExceededRequestLimit value) exceededRequestLimit,
    required TResult Function(_RequestError value) requestError,
    required TResult Function(_ServiceUnavailable value) serviceUnavailable,
    required TResult Function(_SendTimeout value) sendTimeout,
    required TResult Function(_NoInternetConnection value) noInternetConnection,
    required TResult Function(_EmptyResponse value) emptyResponse,
    required TResult Function(_PaymentRequired value) paymentRequired,
    required TResult Function(_UnexpectedError value) unexpectedError,
  }) {
    return noInternetConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RequestCancelled value)? requestCancelled,
    TResult Function(_UnauthorisedRequest value)? unauthorisedRequest,
    TResult Function(_ExceededRequestLimit value)? exceededRequestLimit,
    TResult Function(_RequestError value)? requestError,
    TResult Function(_ServiceUnavailable value)? serviceUnavailable,
    TResult Function(_SendTimeout value)? sendTimeout,
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_EmptyResponse value)? emptyResponse,
    TResult Function(_PaymentRequired value)? paymentRequired,
    TResult Function(_UnexpectedError value)? unexpectedError,
  }) {
    return noInternetConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestCancelled value)? requestCancelled,
    TResult Function(_UnauthorisedRequest value)? unauthorisedRequest,
    TResult Function(_ExceededRequestLimit value)? exceededRequestLimit,
    TResult Function(_RequestError value)? requestError,
    TResult Function(_ServiceUnavailable value)? serviceUnavailable,
    TResult Function(_SendTimeout value)? sendTimeout,
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_EmptyResponse value)? emptyResponse,
    TResult Function(_PaymentRequired value)? paymentRequired,
    TResult Function(_UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (noInternetConnection != null) {
      return noInternetConnection(this);
    }
    return orElse();
  }
}

abstract class _NoInternetConnection extends ErrorHandler {
  const factory _NoInternetConnection() = _$_NoInternetConnection;
  const _NoInternetConnection._() : super._();
}

/// @nodoc
abstract class _$EmptyResponseCopyWith<$Res> {
  factory _$EmptyResponseCopyWith(
          _EmptyResponse value, $Res Function(_EmptyResponse) then) =
      __$EmptyResponseCopyWithImpl<$Res>;
}

/// @nodoc
class __$EmptyResponseCopyWithImpl<$Res>
    extends _$ErrorHandlerCopyWithImpl<$Res>
    implements _$EmptyResponseCopyWith<$Res> {
  __$EmptyResponseCopyWithImpl(
      _EmptyResponse _value, $Res Function(_EmptyResponse) _then)
      : super(_value, (v) => _then(v as _EmptyResponse));

  @override
  _EmptyResponse get _value => super._value as _EmptyResponse;
}

/// @nodoc

class _$_EmptyResponse extends _EmptyResponse {
  const _$_EmptyResponse() : super._();

  @override
  String toString() {
    return 'ErrorHandler.emptyResponse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _EmptyResponse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestCancelled,
    required TResult Function() unauthorisedRequest,
    required TResult Function() exceededRequestLimit,
    required TResult Function(ApiError? apiError) requestError,
    required TResult Function() serviceUnavailable,
    required TResult Function() sendTimeout,
    required TResult Function() noInternetConnection,
    required TResult Function() emptyResponse,
    required TResult Function(ApiError? apiError) paymentRequired,
    required TResult Function() unexpectedError,
  }) {
    return emptyResponse();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? requestCancelled,
    TResult Function()? unauthorisedRequest,
    TResult Function()? exceededRequestLimit,
    TResult Function(ApiError? apiError)? requestError,
    TResult Function()? serviceUnavailable,
    TResult Function()? sendTimeout,
    TResult Function()? noInternetConnection,
    TResult Function()? emptyResponse,
    TResult Function(ApiError? apiError)? paymentRequired,
    TResult Function()? unexpectedError,
  }) {
    return emptyResponse?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestCancelled,
    TResult Function()? unauthorisedRequest,
    TResult Function()? exceededRequestLimit,
    TResult Function(ApiError? apiError)? requestError,
    TResult Function()? serviceUnavailable,
    TResult Function()? sendTimeout,
    TResult Function()? noInternetConnection,
    TResult Function()? emptyResponse,
    TResult Function(ApiError? apiError)? paymentRequired,
    TResult Function()? unexpectedError,
    required TResult orElse(),
  }) {
    if (emptyResponse != null) {
      return emptyResponse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestCancelled value) requestCancelled,
    required TResult Function(_UnauthorisedRequest value) unauthorisedRequest,
    required TResult Function(_ExceededRequestLimit value) exceededRequestLimit,
    required TResult Function(_RequestError value) requestError,
    required TResult Function(_ServiceUnavailable value) serviceUnavailable,
    required TResult Function(_SendTimeout value) sendTimeout,
    required TResult Function(_NoInternetConnection value) noInternetConnection,
    required TResult Function(_EmptyResponse value) emptyResponse,
    required TResult Function(_PaymentRequired value) paymentRequired,
    required TResult Function(_UnexpectedError value) unexpectedError,
  }) {
    return emptyResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RequestCancelled value)? requestCancelled,
    TResult Function(_UnauthorisedRequest value)? unauthorisedRequest,
    TResult Function(_ExceededRequestLimit value)? exceededRequestLimit,
    TResult Function(_RequestError value)? requestError,
    TResult Function(_ServiceUnavailable value)? serviceUnavailable,
    TResult Function(_SendTimeout value)? sendTimeout,
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_EmptyResponse value)? emptyResponse,
    TResult Function(_PaymentRequired value)? paymentRequired,
    TResult Function(_UnexpectedError value)? unexpectedError,
  }) {
    return emptyResponse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestCancelled value)? requestCancelled,
    TResult Function(_UnauthorisedRequest value)? unauthorisedRequest,
    TResult Function(_ExceededRequestLimit value)? exceededRequestLimit,
    TResult Function(_RequestError value)? requestError,
    TResult Function(_ServiceUnavailable value)? serviceUnavailable,
    TResult Function(_SendTimeout value)? sendTimeout,
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_EmptyResponse value)? emptyResponse,
    TResult Function(_PaymentRequired value)? paymentRequired,
    TResult Function(_UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (emptyResponse != null) {
      return emptyResponse(this);
    }
    return orElse();
  }
}

abstract class _EmptyResponse extends ErrorHandler {
  const factory _EmptyResponse() = _$_EmptyResponse;
  const _EmptyResponse._() : super._();
}

/// @nodoc
abstract class _$PaymentRequiredCopyWith<$Res> {
  factory _$PaymentRequiredCopyWith(
          _PaymentRequired value, $Res Function(_PaymentRequired) then) =
      __$PaymentRequiredCopyWithImpl<$Res>;
  $Res call({ApiError? apiError});

  $ApiErrorCopyWith<$Res>? get apiError;
}

/// @nodoc
class __$PaymentRequiredCopyWithImpl<$Res>
    extends _$ErrorHandlerCopyWithImpl<$Res>
    implements _$PaymentRequiredCopyWith<$Res> {
  __$PaymentRequiredCopyWithImpl(
      _PaymentRequired _value, $Res Function(_PaymentRequired) _then)
      : super(_value, (v) => _then(v as _PaymentRequired));

  @override
  _PaymentRequired get _value => super._value as _PaymentRequired;

  @override
  $Res call({
    Object? apiError = freezed,
  }) {
    return _then(_PaymentRequired(
      apiError: apiError == freezed
          ? _value.apiError
          : apiError // ignore: cast_nullable_to_non_nullable
              as ApiError?,
    ));
  }

  @override
  $ApiErrorCopyWith<$Res>? get apiError {
    if (_value.apiError == null) {
      return null;
    }

    return $ApiErrorCopyWith<$Res>(_value.apiError!, (value) {
      return _then(_value.copyWith(apiError: value));
    });
  }
}

/// @nodoc

class _$_PaymentRequired extends _PaymentRequired {
  const _$_PaymentRequired({this.apiError}) : super._();

  @override
  final ApiError? apiError;

  @override
  String toString() {
    return 'ErrorHandler.paymentRequired(apiError: $apiError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaymentRequired &&
            const DeepCollectionEquality().equals(other.apiError, apiError));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(apiError));

  @JsonKey(ignore: true)
  @override
  _$PaymentRequiredCopyWith<_PaymentRequired> get copyWith =>
      __$PaymentRequiredCopyWithImpl<_PaymentRequired>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestCancelled,
    required TResult Function() unauthorisedRequest,
    required TResult Function() exceededRequestLimit,
    required TResult Function(ApiError? apiError) requestError,
    required TResult Function() serviceUnavailable,
    required TResult Function() sendTimeout,
    required TResult Function() noInternetConnection,
    required TResult Function() emptyResponse,
    required TResult Function(ApiError? apiError) paymentRequired,
    required TResult Function() unexpectedError,
  }) {
    return paymentRequired(apiError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? requestCancelled,
    TResult Function()? unauthorisedRequest,
    TResult Function()? exceededRequestLimit,
    TResult Function(ApiError? apiError)? requestError,
    TResult Function()? serviceUnavailable,
    TResult Function()? sendTimeout,
    TResult Function()? noInternetConnection,
    TResult Function()? emptyResponse,
    TResult Function(ApiError? apiError)? paymentRequired,
    TResult Function()? unexpectedError,
  }) {
    return paymentRequired?.call(apiError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestCancelled,
    TResult Function()? unauthorisedRequest,
    TResult Function()? exceededRequestLimit,
    TResult Function(ApiError? apiError)? requestError,
    TResult Function()? serviceUnavailable,
    TResult Function()? sendTimeout,
    TResult Function()? noInternetConnection,
    TResult Function()? emptyResponse,
    TResult Function(ApiError? apiError)? paymentRequired,
    TResult Function()? unexpectedError,
    required TResult orElse(),
  }) {
    if (paymentRequired != null) {
      return paymentRequired(apiError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestCancelled value) requestCancelled,
    required TResult Function(_UnauthorisedRequest value) unauthorisedRequest,
    required TResult Function(_ExceededRequestLimit value) exceededRequestLimit,
    required TResult Function(_RequestError value) requestError,
    required TResult Function(_ServiceUnavailable value) serviceUnavailable,
    required TResult Function(_SendTimeout value) sendTimeout,
    required TResult Function(_NoInternetConnection value) noInternetConnection,
    required TResult Function(_EmptyResponse value) emptyResponse,
    required TResult Function(_PaymentRequired value) paymentRequired,
    required TResult Function(_UnexpectedError value) unexpectedError,
  }) {
    return paymentRequired(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RequestCancelled value)? requestCancelled,
    TResult Function(_UnauthorisedRequest value)? unauthorisedRequest,
    TResult Function(_ExceededRequestLimit value)? exceededRequestLimit,
    TResult Function(_RequestError value)? requestError,
    TResult Function(_ServiceUnavailable value)? serviceUnavailable,
    TResult Function(_SendTimeout value)? sendTimeout,
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_EmptyResponse value)? emptyResponse,
    TResult Function(_PaymentRequired value)? paymentRequired,
    TResult Function(_UnexpectedError value)? unexpectedError,
  }) {
    return paymentRequired?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestCancelled value)? requestCancelled,
    TResult Function(_UnauthorisedRequest value)? unauthorisedRequest,
    TResult Function(_ExceededRequestLimit value)? exceededRequestLimit,
    TResult Function(_RequestError value)? requestError,
    TResult Function(_ServiceUnavailable value)? serviceUnavailable,
    TResult Function(_SendTimeout value)? sendTimeout,
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_EmptyResponse value)? emptyResponse,
    TResult Function(_PaymentRequired value)? paymentRequired,
    TResult Function(_UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (paymentRequired != null) {
      return paymentRequired(this);
    }
    return orElse();
  }
}

abstract class _PaymentRequired extends ErrorHandler {
  const factory _PaymentRequired({ApiError? apiError}) = _$_PaymentRequired;
  const _PaymentRequired._() : super._();

  ApiError? get apiError;
  @JsonKey(ignore: true)
  _$PaymentRequiredCopyWith<_PaymentRequired> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UnexpectedErrorCopyWith<$Res> {
  factory _$UnexpectedErrorCopyWith(
          _UnexpectedError value, $Res Function(_UnexpectedError) then) =
      __$UnexpectedErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnexpectedErrorCopyWithImpl<$Res>
    extends _$ErrorHandlerCopyWithImpl<$Res>
    implements _$UnexpectedErrorCopyWith<$Res> {
  __$UnexpectedErrorCopyWithImpl(
      _UnexpectedError _value, $Res Function(_UnexpectedError) _then)
      : super(_value, (v) => _then(v as _UnexpectedError));

  @override
  _UnexpectedError get _value => super._value as _UnexpectedError;
}

/// @nodoc

class _$_UnexpectedError extends _UnexpectedError {
  const _$_UnexpectedError() : super._();

  @override
  String toString() {
    return 'ErrorHandler.unexpectedError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _UnexpectedError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestCancelled,
    required TResult Function() unauthorisedRequest,
    required TResult Function() exceededRequestLimit,
    required TResult Function(ApiError? apiError) requestError,
    required TResult Function() serviceUnavailable,
    required TResult Function() sendTimeout,
    required TResult Function() noInternetConnection,
    required TResult Function() emptyResponse,
    required TResult Function(ApiError? apiError) paymentRequired,
    required TResult Function() unexpectedError,
  }) {
    return unexpectedError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? requestCancelled,
    TResult Function()? unauthorisedRequest,
    TResult Function()? exceededRequestLimit,
    TResult Function(ApiError? apiError)? requestError,
    TResult Function()? serviceUnavailable,
    TResult Function()? sendTimeout,
    TResult Function()? noInternetConnection,
    TResult Function()? emptyResponse,
    TResult Function(ApiError? apiError)? paymentRequired,
    TResult Function()? unexpectedError,
  }) {
    return unexpectedError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestCancelled,
    TResult Function()? unauthorisedRequest,
    TResult Function()? exceededRequestLimit,
    TResult Function(ApiError? apiError)? requestError,
    TResult Function()? serviceUnavailable,
    TResult Function()? sendTimeout,
    TResult Function()? noInternetConnection,
    TResult Function()? emptyResponse,
    TResult Function(ApiError? apiError)? paymentRequired,
    TResult Function()? unexpectedError,
    required TResult orElse(),
  }) {
    if (unexpectedError != null) {
      return unexpectedError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestCancelled value) requestCancelled,
    required TResult Function(_UnauthorisedRequest value) unauthorisedRequest,
    required TResult Function(_ExceededRequestLimit value) exceededRequestLimit,
    required TResult Function(_RequestError value) requestError,
    required TResult Function(_ServiceUnavailable value) serviceUnavailable,
    required TResult Function(_SendTimeout value) sendTimeout,
    required TResult Function(_NoInternetConnection value) noInternetConnection,
    required TResult Function(_EmptyResponse value) emptyResponse,
    required TResult Function(_PaymentRequired value) paymentRequired,
    required TResult Function(_UnexpectedError value) unexpectedError,
  }) {
    return unexpectedError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RequestCancelled value)? requestCancelled,
    TResult Function(_UnauthorisedRequest value)? unauthorisedRequest,
    TResult Function(_ExceededRequestLimit value)? exceededRequestLimit,
    TResult Function(_RequestError value)? requestError,
    TResult Function(_ServiceUnavailable value)? serviceUnavailable,
    TResult Function(_SendTimeout value)? sendTimeout,
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_EmptyResponse value)? emptyResponse,
    TResult Function(_PaymentRequired value)? paymentRequired,
    TResult Function(_UnexpectedError value)? unexpectedError,
  }) {
    return unexpectedError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestCancelled value)? requestCancelled,
    TResult Function(_UnauthorisedRequest value)? unauthorisedRequest,
    TResult Function(_ExceededRequestLimit value)? exceededRequestLimit,
    TResult Function(_RequestError value)? requestError,
    TResult Function(_ServiceUnavailable value)? serviceUnavailable,
    TResult Function(_SendTimeout value)? sendTimeout,
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_EmptyResponse value)? emptyResponse,
    TResult Function(_PaymentRequired value)? paymentRequired,
    TResult Function(_UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (unexpectedError != null) {
      return unexpectedError(this);
    }
    return orElse();
  }
}

abstract class _UnexpectedError extends ErrorHandler {
  const factory _UnexpectedError() = _$_UnexpectedError;
  const _UnexpectedError._() : super._();
}
