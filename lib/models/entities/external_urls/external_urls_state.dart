import 'package:freezed_annotation/freezed_annotation.dart';

part 'external_urls_state.freezed.dart';
part 'external_urls_state.g.dart';

@freezed
class ExternalURLsState with _$ExternalURLsState {
  const factory ExternalURLsState(
      {@JsonKey(name: 'streetview') String? streetview,
      @JsonKey(name: 'googlemap') String? googlemap,
      @JsonKey(name: 'twitter') String? twitter}) = _ExternalURLsState;

  factory ExternalURLsState.fromJson(Map<String, dynamic> json) =>
      _$ExternalURLsStateFromJson(json);
}
