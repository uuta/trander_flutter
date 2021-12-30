import '/import.dart';
import '/models/repositories/city/city_repository.dart';

class LocationViewController {
  final locationViewControllerGetCity = Provider<void>((ref) async {
    final auth0State = ref.watch(auth0NotifierProvider);
    final cityState = ref.watch(cityNotifierProvider);
    final locationState = ref.watch(locationNotifierProvider);
    final locationNotifier = ref.watch(locationNotifierProvider.notifier);
    final cityNotifier = ref.watch(cityNotifierProvider.notifier);
    final cityRepository = CityRepository(idToken: auth0State.idToken);

    try {
      final Map<String, dynamic> params = {
        'lat': locationState.currentLocation.latitude,
        'lng': locationState.currentLocation.longitude,
        'max': 100,
        'min': 0,
        'directionType': 0,
      };

      // TODO:
      final res = await cityRepository.getCity(params);
      await locationNotifier.getNewLocation(cityState.data);
    } on Exception catch (e) {
      debugPrint(e.toString());
      await cityNotifier.storeError(e.toString());
    }
  });
}
