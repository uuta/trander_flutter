import '/import.dart';

class CityService {
  final cityRepository = CityRepository();

  Future<LocationState> getCity(LocationState state, String? idToken) async {
    // params
    final Map<String, dynamic> params = {
      'lat': state.currentLocation.latitude,
      'lng': state.currentLocation.longitude,
      'max': state.settingData.minDistance,
      'min': state.settingData.maxDistance,
      'directionType': state.settingData.directionType,
    };

    final res = await cityRepository.getCity(params, idToken);
    return state.copyWith(cityData: CityState.fromJson(res.data['data']));
  }
}
