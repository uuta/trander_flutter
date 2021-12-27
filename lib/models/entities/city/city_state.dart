import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_state.freezed.dart';
part 'city_state.g.dart';

@freezed
class CityState with _$CityState {
  const factory CityState(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'distance') double? distance,
      @JsonKey(name: 'direction') String? direction,
      @JsonKey(name: 'countryCode') String? countryCode,
      @JsonKey(name: 'icon') String? icon,
      @JsonKey(name: 'rating') String? rating,
      @JsonKey(name: 'photo') String? photo,
      @JsonKey(name: 'vicinity') String? vicinity,
      @JsonKey(name: 'userRatingsTotal') int? userRatingsTotal,
      @JsonKey(name: 'priceLevel') int? priceLevel,
      @JsonKey(name: 'lat') @Default(0) double lat,
      @JsonKey(name: 'lng') @Default(0) double lng,
      @JsonKey(name: 'placeId') String? placeId,
      @JsonKey(name: 'ratingStar') String? ratingStar}) = _CityState;

  factory CityState.fromJson(Map<String, dynamic> json) =>
      _$CityStateFromJson(json);
}
