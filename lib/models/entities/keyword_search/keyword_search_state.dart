import 'package:freezed_annotation/freezed_annotation.dart';

part 'keyword_search_state.freezed.dart';
part 'keyword_search_state.g.dart';

@freezed
class KeywordSearchState with _$KeywordSearchState {
  const factory KeywordSearchState(
      {@JsonKey(name: 'name') @Default('') String name,
      @JsonKey(name: 'distance') @Default(0) double distance,
      @JsonKey(name: 'direction') @Default('') String direction,
      @JsonKey(name: 'icon') String? icon,
      @JsonKey(name: 'rating') String? rating,
      @JsonKey(name: 'photo') String? photo,
      @JsonKey(name: 'vicinity') String? vicinity,
      @JsonKey(name: 'userRatingsTotal') int? userRatingsTotal,
      @JsonKey(name: 'priceLevel') int? priceLevel,
      @JsonKey(name: 'lat') @Default(0) double lat,
      @JsonKey(name: 'lng') @Default(0) double lng,
      @JsonKey(name: 'placeId') String? placeId,
      @JsonKey(name: 'ratingStar') String? ratingStar}) = _KeywordSearchState;

  factory KeywordSearchState.fromJson(Map<String, dynamic> json) =>
      _$KeywordSearchStateFromJson(json);
}
