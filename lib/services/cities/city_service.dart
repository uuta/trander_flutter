import '/import.dart';

class CityService {
  final cityRepository = CityRepository();

  Future<LocationState> getCity(
      LocationState state, String? accessToken) async {
    // params
    final Map<String, dynamic> params = {
      'lat': state.currentLocation.latitude,
      'lng': state.currentLocation.longitude,
      'min': state.settingData.minDistance,
      'max': state.settingData.maxDistance,
      'directionType': state.settingData.directionType,
    };

    final res = await cityRepository.getCity(params, accessToken);
    return state.copyWith(cityData: CityState.fromJson(res.data));
  }
}
