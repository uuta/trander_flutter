import '/import.dart';
import 'dart:async';
import '/models/controllers/location/location_state.dart';
import '/models/repositories/location/location_repository.dart';

final locationNotifierProvider =
    StateNotifierProvider<LocationController, LocationState>(
  (ref) => LocationController(),
);

class LocationController extends StateNotifier<LocationState> {
  LocationController() : super(LocationState(mapController: Completer()));

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

  Future<void> getNewLocation() async {
    await _setNewLocation();
    await _setMaker();
  }

  Future<void> _setNewLocation() async {
    state = state.copyWith(newLocation: const LatLng(35.658034, 139.701636));
  }

  Future<void> _setMaker() async {
    // Set markers
    final Set<Marker> _markers = {};
    _markers.add(Marker(
        markerId: MarkerId(state.newLocation.toString()),
        position: state.newLocation,
        infoWindow:
            const InfoWindow(title: 'Remember Here', snippet: 'good place'),
        icon: BitmapDescriptor.defaultMarker));
    state = state.copyWith(markers: _markers);

    // Shift camera position
    CameraPosition _kLake =
        CameraPosition(target: state.newLocation, zoom: 14.4746);
    final GoogleMapController controller = await state.mapController.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}
