// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CityState _$$_CityStateFromJson(Map<String, dynamic> json) => _$_CityState(
      name: json['name'] as String?,
      distance: (json['distance'] as num?)?.toDouble(),
      direction: json['direction'] as String?,
      countryCode: json['countryCode'] as String?,
      icon: json['icon'] as String?,
      rating: json['rating'] as String?,
      photo: json['photo'] as String?,
      vicinity: json['vicinity'] as String?,
      userRatingsTotal: json['userRatingsTotal'] as int?,
      priceLevel: json['priceLevel'] as int?,
      lat: (json['lat'] as num?)?.toDouble() ?? 0,
      lng: (json['lng'] as num?)?.toDouble() ?? 0,
      placeId: json['placeId'] as String?,
      ratingStar: json['ratingStar'] as String?,
    );

Map<String, dynamic> _$$_CityStateToJson(_$_CityState instance) =>
    <String, dynamic>{
      'name': instance.name,
      'distance': instance.distance,
      'direction': instance.direction,
      'countryCode': instance.countryCode,
      'icon': instance.icon,
      'rating': instance.rating,
      'photo': instance.photo,
      'vicinity': instance.vicinity,
      'userRatingsTotal': instance.userRatingsTotal,
      'priceLevel': instance.priceLevel,
      'lat': instance.lat,
      'lng': instance.lng,
      'placeId': instance.placeId,
      'ratingStar': instance.ratingStar,
    };
