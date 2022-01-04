import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_error.g.dart';
part 'api_error.freezed.dart';

@freezed
class ApiError with _$ApiError {
  const factory ApiError(
          {@JsonKey(name: 'message') @Default('') final String message}) =
      _ApiError;

  factory ApiError.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorFromJson(json);
}
