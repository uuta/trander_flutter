import '/import.dart';

class LocationExploreDataService {
  final LocationState state;
  final String lat, lng, placeId, name;
  const LocationExploreDataService(
      {Key? key,
      required this.state,
      required this.lat,
      required this.lng,
      required this.placeId,
      required this.name});

  Future<LocationState> storeCityExploreData() async {
    return state.copyWith(
        cityExploreState: CityExploreState.fromJson(await _setExploreData()));
  }

  Future<LocationState> storeKeywordSearchExploreData() async {
    return state.copyWith(
        keywordSearchExploreState:
            KeywordSearchExploreState.fromJson(await _setExploreData()));
  }

  Future<Map<String, String>> _setExploreData() async {
    return ({
      'googlemap': _googleMap(),
      'streetview': _streetView(),
      'twitter': _twitter(),
    });
  }

  String _streetView() {
    return 'https://www.google.com/maps/@?api=1&map_action=pano&viewpoint=$lat,$lng';
  }

  String _googleMap() {
    return 'https://www.google.com/maps/search/?api=1&query=$lat,$lng&query_place_id=$placeId';
  }

  String _twitter() {
    final String twitterUrl = 'https://trander.net/kw/share/$placeId';

    final String twitterContent =
        "How about this place?%0a%0a%20%23Trander%0a%0a$name%0a";

    return 'https://twitter.com/intent/tweet?text=$twitterContent&url=$twitterUrl';
  }
}
