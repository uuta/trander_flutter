import '/import.dart';
import 'dart:async';
import '/models/repositories/location/location_repository.dart';
import '/models/models.dart';

final locationNotifierProvider =
    StateNotifierProvider<LocationStateNotifier, LocationState>(
  (ref) => LocationStateNotifier(),
);

class LocationStateNotifier extends StateNotifier<LocationState> {
  LocationStateNotifier() : super(LocationState(mapController: Completer()));

  final repository = LocationRepository();

  Future<void> initAction() async {
    state = state.copyWith(mapController: Completer());
  }

  Future<void> getCurrentLocation() async {
    state = state.copyWith(isBusy: true);
    try {
      final data = await repository.getCurrentPosition();
      state = state.copyWith(
          isBusy: false,
          currentLocation: LatLng(data.latitude, data.longitude));
    } on Exception catch (e, s) {
      debugPrint('login error: $e - stack: $s');
      state = state.copyWith(isBusy: false, errorMessage: e.toString());
    }
  }

  Future<void> getNewLocation(CityState? data) async {
    await _setNewLocation(data);
    await _setMaker();
  }

  Future<void> _setNewLocation(CityState? data) async {
    state = state.copyWith(newLocation: LatLng(data!.lat, data.lng));
  }

  Future<void> _setMaker() async {
    // Set markers
    final Set<Marker> _markers = {};
    _markers.add(Marker(
        markerId: MarkerId(state.newLocation.toString()),
        position: state.newLocation,
        icon: BitmapDescriptor.defaultMarker));
    state = state.copyWith(markers: _markers);

    // Shift camera position
    final CameraPosition _newPosition =
        CameraPosition(target: state.newLocation, zoom: 14.4746);
    final GoogleMapController controller = await state.mapController.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_newPosition));
  }
}
