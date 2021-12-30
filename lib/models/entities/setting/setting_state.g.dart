// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SettingState _$$_SettingStateFromJson(Map<String, dynamic> json) =>
    _$_SettingState(
      minDistance: json['minDistance'] as String? ?? 0,
      maxDistance: json['maxDistance'] as String? ?? 100,
      directionType: json['directionType'] as String?,
    );

Map<String, dynamic> _$$_SettingStateToJson(_$_SettingState instance) =>
    <String, dynamic>{
      'minDistance': instance.minDistance,
      'maxDistance': instance.maxDistance,
      'directionType': instance.directionType,
    };
