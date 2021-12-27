import '/import.dart';
import '/models/models.dart';
import '/models/repositories/city/city_repository.dart';
import '/models/states/city/city_result_state.dart';

final cityNotifierProvider =
    StateNotifierProvider<CityStateNotifier, CityResultState>(
  (ref) => CityStateNotifier(),
);

class CityStateNotifier extends StateNotifier<CityResultState> {
  CityStateNotifier() : super(const CityResultState());

  final repository = CityRepository();

  Future<void> getCity(String? idToken, LatLng latLng) async {
    state = state.copyWith(isBusy: true, errorMessage: '');
    // TODO: fix it up later
    final Map<String, dynamic> params = {
      'lat': latLng.latitude,
      'lng': latLng.longitude,
      'max': 100,
      'min': 0,
      'directionType': 0,
    };

    try {
      final res = await repository.getCity(idToken, params);
      state = state.copyWith(
          isBusy: false, data: CityState.fromJson(res.data['data']));
    } on Exception catch (e) {
      state = state.copyWith(isBusy: false, errorMessage: e.toString());
    }
  }
}
