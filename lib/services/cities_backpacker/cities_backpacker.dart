import '/import.dart';

class CityBackpackerService {
  final cityRepository = CityRepository();

  Future<LocationState> get(LocationState state, String? accessToken) async {
    final res = await cityRepository.getCityBackpacker(accessToken);
    debugPrint('CityBackpackerService get: ${res.data}');

    if (res.data.isEmpty) {
      throw const EmptyResponseException('Keyword search data is empty');
    }

    return state.copyWith(cityData: CityState.fromJson(res.data));
  }
}
