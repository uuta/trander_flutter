import 'package:freezed_annotation/freezed_annotation.dart';

part 'setting_state.freezed.dart';
part 'setting_state.g.dart';

@freezed
class SettingState with _$SettingState {
  const factory SettingState(
          {@JsonKey(name: 'minDistance') @Default(0) int minDistance,
          @JsonKey(name: 'maxDistance') @Default(100) int maxDistance,
          @JsonKey(name: 'directionType') @Default(0) int directionType}) =
      _SettingState;

  factory SettingState.fromJson(Map<String, dynamic> json) =>
      _$SettingStateFromJson(json);
}
