// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CityStateImpl _$$CityStateImplFromJson(Map<String, dynamic> json) =>
    _$CityStateImpl(
      name: json['name'] as String? ?? '',
      distance: (json['distance'] as num?)?.toDouble() ?? 0,
      direction: json['direction'] as String? ?? '',
      countryCode: json['countryCode'] as String?,
      icon: json['icon'] as String?,
      rating: (json['rating'] as num?)?.toDouble() ?? 0,
      photo: json['photo'] as String?,
      vicinity: json['vicinity'] as String?,
      userRatingsTotal: json['userRatingsTotal'] as int?,
      priceLevel: json['priceLevel'] as int?,
      lat: (json['lat'] as num?)?.toDouble() ?? 0,
      lng: (json['lng'] as num?)?.toDouble() ?? 0,
      placeId: json['placeId'] as String?,
      ratingStar: json['ratingStar'] as String?,
    );

Map<String, dynamic> _$$CityStateImplToJson(_$CityStateImpl instance) =>
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
