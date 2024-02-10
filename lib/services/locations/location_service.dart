import '/import.dart';

class LocationService {
  // Repositories
  final locationRepository = LocationRepository();

  Future<LocationState> getCurrentLocation(LocationState state) async {
    final data = await locationRepository.getCurrentPosition();
    return state.copyWith(
        isLoading: false,
        currentLocation: LatLng(data.latitude, data.longitude));
  }

  Future<LocationState> setNewLocation(
      LocationState state, double lat, double lng) async {
    return state.copyWith(newLocation: LatLng(lat, lng));
  }

  Future<LocationState> setMarker(LocationState state) async {
    final Set<Marker> markers = {};
    markers.add(Marker(
        markerId: MarkerId(state.newLocation.toString()),
        position: state.newLocation,
        icon: BitmapDescriptor.defaultMarker));
    return state.copyWith(markers: markers);
  }

  Future<void> shiftCameraPosition(LocationState state, LatLng position) async {
    final CameraPosition newPosition =
        CameraPosition(target: position, zoom: 14.4746);
    final GoogleMapController controller = await state.mapController.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(newPosition));
  }
}
