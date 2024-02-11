import '/import.dart';

class CityBackpackerService {
  final cityRepository = CityRepository();

  Future<LocationState> get(LocationState state, String? accessToken) async {
    final res = await cityRepository.getCityBackpacker(accessToken);
    return state.copyWith(cityData: CityState.fromJson(res.data));
  }
}
