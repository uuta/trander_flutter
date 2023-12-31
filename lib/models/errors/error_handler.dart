import '/import.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '/models/errors/api_error.dart';

part 'error_handler.freezed.dart';

@freezed
class ErrorHandler with _$ErrorHandler {
  const factory ErrorHandler.requestCancelled() = _RequestCancelled;

  const factory ErrorHandler.unauthorisedRequest() = _UnauthorisedRequest;

  const factory ErrorHandler.exceededRequestLimit() = _ExceededRequestLimit;

  const factory ErrorHandler.requestError({ApiError? apiError}) = _RequestError;

  const factory ErrorHandler.serviceUnavailable() = _ServiceUnavailable;

  const factory ErrorHandler.sendTimeout() = _SendTimeout;

  const factory ErrorHandler.noInternetConnection() = _NoInternetConnection;

  const factory ErrorHandler.emptyResponse() = _EmptyResponse;

  const factory ErrorHandler.paymentRequired({ApiError? apiError}) =
      _PaymentRequired;

  const factory ErrorHandler.unexpectedError() = _UnexpectedError;

  const ErrorHandler._();

  static ErrorHandler getApiError(error) {
    if (error is Exception) {
      try {
        ErrorHandler e = const ErrorHandler.unexpectedError();
        if (error is DioError) {
          switch (error.type) {
            case DioErrorType.connectTimeout:
            case DioErrorType.sendTimeout:
            case DioErrorType.receiveTimeout:
              e = const ErrorHandler.sendTimeout();
              break;
            case DioErrorType.cancel:
              e = const ErrorHandler.requestCancelled();
              break;
            case DioErrorType.response:
              final int? statusCode = error.response!.statusCode;

              if (statusCode == null) {
                break;
              }

              if (statusCode == 402) {
                e = ErrorHandler.paymentRequired(
                    apiError: ApiError.fromJson(error.response!.data));
                break;
              }

              if (statusCode == 429) {
                e = const ErrorHandler.exceededRequestLimit();
                break;
              }

              if (400 <= statusCode && statusCode < 500) {
                e = ErrorHandler.requestError(
                    apiError: ApiError.fromJson(error.response!.data));
                break;
              }

              if (500 <= statusCode) {
                e = const ErrorHandler.serviceUnavailable();
                break;
              }

              break;
            default:
              e = const ErrorHandler.unexpectedError();
          }
        } else if (error is SocketException) {
          e = const ErrorHandler.noInternetConnection();
        } else if (error is EmptyResponseException) {
          e = const ErrorHandler.emptyResponse();
        } else {
          e = const ErrorHandler.unexpectedError();
        }
        return e;
      } catch (_) {
        return const ErrorHandler.unexpectedError();
      }
    } else {
      return const ErrorHandler.unexpectedError();
    }
  }

  String get errorMessage => when(
      requestCancelled: () => "Request has been cancelled.",
      unauthorisedRequest: () => "Unauthorised request.",
      exceededRequestLimit: () => "Exceeded request limit.",
      requestError: (ApiError? error) => error!.message,
      serviceUnavailable: () => "Please wait for a while and try it again.",
      sendTimeout: () => "Send timeout in connection with API server.",
      emptyResponse: () => "No data found. Please try again.",
      paymentRequired: (ApiError? error) => error!.message,
      noInternetConnection: () => "No internet connection.",
      unexpectedError: () => "Unexpected error occurred.");

  String get type => when(
      requestCancelled: () => "requestCancelled",
      unauthorisedRequest: () => "unauthorisedRequest",
      exceededRequestLimit: () => "exceededRequestLimit",
      requestError: (ApiError? error) => "requestError",
      serviceUnavailable: () => "serviceUnavailable",
      sendTimeout: () => "sendTimeout",
      emptyResponse: () => "emptyResponse",
      paymentRequired: (ApiError? error) => "paymentRequired",
      noInternetConnection: () => "noInternetConnection",
      unexpectedError: () => "unexpectedError");
}
