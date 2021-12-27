import '/import.dart';
import '/models/controllers/city/city_state.dart';
import '/models/repositories/city/city_repository.dart';
import '/models/controllers/city/city_result_state.dart';

final cityNotifierProvider = StateNotifierProvider<CityController, CityState>(
  (ref) => CityController(),
);

class CityController extends StateNotifier<CityState> {
  CityController() : super(const CityState());

  final repository = CityRepository();

  Future<void> getCity(String? idToken) async {
    try {
      final res = await repository.getCity(idToken);
      if (res.statusCode == 200) {
        state = CityState.fromJson(res.data['data']);
      }
    } on Exception catch (e, s) {
      debugPrint('login error: $e - stack: $s');
    }
  }
}
