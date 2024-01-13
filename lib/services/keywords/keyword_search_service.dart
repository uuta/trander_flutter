import '/import.dart';

class KeywordSearchService {
  final keywordSearchRepository = KeywordSearchRepository();

  Future<dynamic> getKeywordSearch(
      LocationState state, String? accessToken) async {
    // params
    final Map<String, dynamic> params = {
      'lat': state.currentLocation.latitude,
      'lng': state.currentLocation.longitude,
      'keyword': state.keywordTextEditingController.text,
      'max': state.settingData.minDistance,
      'min': state.settingData.maxDistance,
      'directionType': state.settingData.directionType,
    };

    return await keywordSearchRepository.getKeywordSearch(params, accessToken);
  }
}
