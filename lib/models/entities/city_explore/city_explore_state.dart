import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_explore_state.freezed.dart';
part 'city_explore_state.g.dart';

@freezed
class CityExploreState with _$CityExploreState {
  const factory CityExploreState(
      {@JsonKey(name: 'streetview') String? streetview,
      @JsonKey(name: 'googlemap') String? googlemap,
      @JsonKey(name: 'twitter') String? twitter}) = _CityExploreState;

  factory CityExploreState.fromJson(Map<String, dynamic> json) =>
      _$CityExploreStateFromJson(json);
}
