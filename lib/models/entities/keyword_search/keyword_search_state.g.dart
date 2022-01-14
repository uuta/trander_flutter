// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keyword_search_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_KeywordSearchState _$$_KeywordSearchStateFromJson(
        Map<String, dynamic> json) =>
    _$_KeywordSearchState(
      name: json['name'] as String?,
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

Map<String, dynamic> _$$_KeywordSearchStateToJson(
        _$_KeywordSearchState instance) =>
    <String, dynamic>{
      'name': instance.name,
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
