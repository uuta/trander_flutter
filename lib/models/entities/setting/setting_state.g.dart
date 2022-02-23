// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SettingState _$$_SettingStateFromJson(Map<String, dynamic> json) =>
    _$_SettingState(
      minDistance: json['minDistance'] as int? ?? 0,
      maxDistance: json['maxDistance'] as int? ?? 100,
      directionType: json['directionType'] as int? ?? 0,
    );

Map<String, dynamic> _$$_SettingStateToJson(_$_SettingState instance) =>
    <String, dynamic>{
      'minDistance': instance.minDistance,
      'maxDistance': instance.maxDistance,
      'directionType': instance.directionType,
    };
