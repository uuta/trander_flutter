import '/import.dart';

class LocationViewController {
  Future<void> getCity(
    Auth0State auth0State,
    LocationState locationState,
    dynamic cityNotifier,
    dynamic locationNotifier,
    dynamic cityState,
  ) async {
    await cityNotifier.getCity(
        auth0State.idToken, locationState.currentLocation);

    if (cityState.data != null) {
      await locationNotifier.getNewLocation(cityState.data);
    }
  }
}
