import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_result_state.freezed.dart';

@freezed
abstract class CityResult<T> with _$CityResult<T> {
  const factory CityResult.success(T value) = Success<T>;
  const factory CityResult.failure(Error error) = Failure<T>;
}
