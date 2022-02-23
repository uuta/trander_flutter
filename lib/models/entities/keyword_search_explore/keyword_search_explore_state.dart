import 'package:freezed_annotation/freezed_annotation.dart';

part 'keyword_search_explore_state.freezed.dart';
part 'keyword_search_explore_state.g.dart';

@freezed
class KeywordSearchExploreState with _$KeywordSearchExploreState {
  const factory KeywordSearchExploreState(
      {@JsonKey(name: 'streetview') String? streetview,
      @JsonKey(name: 'googlemap') String? googlemap,
      @JsonKey(name: 'twitter') String? twitter}) = _KeywordSearchExploreState;

  factory KeywordSearchExploreState.fromJson(Map<String, dynamic> json) =>
      _$KeywordSearchExploreStateFromJson(json);
}
