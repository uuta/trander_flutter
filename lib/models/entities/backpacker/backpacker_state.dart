import 'package:freezed_annotation/freezed_annotation.dart';

part 'backpacker_state.freezed.dart';
part 'backpacker_state.g.dart';

@freezed
class BackpackerState with _$BackpackerState {
  const factory BackpackerState(
      {@JsonKey(name: 'name') @Default('') String name,
      @JsonKey(name: 'distance') @Default(0) double distance,
      @JsonKey(name: 'direction') @Default('') String direction,
      @JsonKey(name: 'countryCode') String? countryCode,
      @JsonKey(name: 'icon') String? icon,
      @JsonKey(name: 'rating') @Default(0) double rating,
      @JsonKey(name: 'photo') String? photo,
      @JsonKey(name: 'vicinity') String? vicinity,
      @JsonKey(name: 'userRatingsTotal') int? userRatingsTotal,
      @JsonKey(name: 'priceLevel') int? priceLevel,
      @JsonKey(name: 'lat') @Default(0) double lat,
      @JsonKey(name: 'lng') @Default(0) double lng,
      @JsonKey(name: 'placeId') String? placeId,
      @JsonKey(name: 'ratingStar') String? ratingStar}) = _BackpackerState;

  factory BackpackerState.fromJson(Map<String, dynamic> json) =>
      _$BackpackerStateFromJson(json);
}
