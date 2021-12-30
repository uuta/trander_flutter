import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import '/models/entities/setting/setting_state.dart';

part 'setting_result_state.freezed.dart';

@freezed
class SettingResultState with _$SettingResultState {
  const factory SettingResultState({
    @Default(false) bool isBusy,
    SettingState? data,
    @Default(false) bool isError,
    String? errorMessage,
  }) = _SettingResultState;
}
