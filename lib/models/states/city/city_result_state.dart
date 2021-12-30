import 'package:freezed_annotation/freezed_annotation.dart';
import '/models/models.dart';

part 'city_result_state.freezed.dart';

@freezed
class CityResultState with _$CityResultState {
  const factory CityResultState({
    @Default(false) bool isBusy,
    CityState? data,
    @Default(false) bool isError,
    String? errorMessage,
  }) = _CityResultState;
}
