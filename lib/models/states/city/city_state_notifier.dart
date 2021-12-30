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

  Future<void> getCity(LatLng latLng) async {
    state = state.copyWith(isBusy: true, errorMessage: '');

    try {
      final res = await repository.getCity(params);
      state = state.copyWith(
          isBusy: false, data: CityState.fromJson(res.data['data']));
    } on Exception catch (e) {
      state = state.copyWith(isBusy: false, errorMessage: e.toString());
    }
  }

  Future<void> storeData(data) async {
    state = state.copyWith(isBusy: false, data: data);
  }

  Future<void> storeError(String e) async {
    state = state.copyWith(isBusy: false, errorMessage: e);
  }
}
