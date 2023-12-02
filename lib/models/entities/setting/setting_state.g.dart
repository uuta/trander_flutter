// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SettingStateImpl _$$SettingStateImplFromJson(Map<String, dynamic> json) =>
    _$SettingStateImpl(
      minDistance: json['minDistance'] as int? ?? 0,
      maxDistance: json['maxDistance'] as int? ?? 100,
      directionType: json['directionType'] as int? ?? 0,
    );

Map<String, dynamic> _$$SettingStateImplToJson(_$SettingStateImpl instance) =>
    <String, dynamic>{
      'minDistance': instance.minDistance,
      'maxDistance': instance.maxDistance,
      'directionType': instance.directionType,
    };
