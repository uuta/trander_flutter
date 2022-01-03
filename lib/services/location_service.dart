import '/import.dart';
import '/models/repositories/location/location_repository.dart';
import '/models/repositories/city/city_repository.dart';
import '/models/repositories/setting/setting_repository.dart';

// TODO: might be better to separate functions into different files
class LocationService {
  // Repositories
  final cityRepository = CityRepository();
  final locationRepository = LocationRepository();
  final settingRepository = SettingRepository();

  Future<LocationState> getCurrentLocation(LocationState state) async {
    final data = await locationRepository.getCurrentPosition();
    return state.copyWith(
        isBusy: false, currentLocation: LatLng(data.latitude, data.longitude));
  }

  Future<LocationState> getCity(LocationState state, String? idToken) async {
    // params
    final Map<String, dynamic> params = {
      'lat': state.currentLocation.latitude,
      'lng': state.currentLocation.longitude,
      'max': state.settingData.minDistance,
      'min': state.settingData.maxDistance,
      'directionType': state.settingData.directionType,
    };

    final res = await cityRepository.getCity(params, idToken);
    return state.copyWith(
        isBusy: false, cityData: CityState.fromJson(res.data['data']));
  }

  Future<LocationState> setNewLocation(LocationState state) async {
    return state.copyWith(
        newLocation: LatLng(state.cityData.lat, state.cityData.lng));
  }

  Future<LocationState> setMarker(LocationState state) async {
    final Set<Marker> _markers = {};
    _markers.add(Marker(
        markerId: MarkerId(state.newLocation.toString()),
        position: state.newLocation,
        icon: BitmapDescriptor.defaultMarker));
    return state.copyWith(markers: _markers);
  }

  Future<void> shiftCameraPosition(LocationState state, LatLng position) async {
    final CameraPosition _newPosition =
        CameraPosition(target: position, zoom: 14.4746);
    final GoogleMapController controller = await state.mapController.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_newPosition));
  }

  Future<LocationState> getSetting(LocationState state, String? idToken) async {
    final res = await settingRepository.getSetting(idToken);
    return (res.data.isNotEmpty)
        ? state = state.copyWith(
            isBusy: false, settingData: SettingState.fromJson(res.data))
        : state = state.copyWith(isBusy: false);
  }

  Future<LocationState> postSetting(
      LocationState state, String? idToken) async {
    await settingRepository.postSetting(idToken, state.settingData.toJson());
    return state.copyWith(isBusy: false);
  }
}
