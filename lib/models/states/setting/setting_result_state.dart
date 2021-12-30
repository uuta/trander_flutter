import '/import.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'setting_result_state.freezed.dart';

@freezed
class SettingResultState<T> with _$SettingResultState<T> {
  const factory SettingResultState({
    @Default(false) bool isBusy,
    Result? result,
  }) = _SettingResultState;
}
