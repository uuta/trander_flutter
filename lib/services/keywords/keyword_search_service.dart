import '/import.dart';

class KeywordSearchService {
  final keywordSearchRepository = KeywordSearchRepository();

  Future<LocationState> getKeywordSearch(
      LocationState state, String? idToken) async {
    // params
    final Map<String, dynamic> params = {
      'lat': state.currentLocation.latitude,
      'lng': state.currentLocation.longitude,
      'keyword': 'cafe',
      'max': state.settingData.minDistance,
      'min': state.settingData.maxDistance,
      'directionType': state.settingData.directionType,
    };

    final res = await keywordSearchRepository.getKeywordSearch(params, idToken);
    return state.copyWith(
        keywordSearchData: KeywordSearchState.fromJson(res.data['data']));
  }
}
