import '/import.dart';

// TODO: might be better to separate functions into different files
class LocationService {
  // Repositories
  final locationRepository = LocationRepository();

  Future<LocationState> getCurrentLocation(LocationState state) async {
    final data = await locationRepository.getCurrentPosition();
    return state.copyWith(
        isLoading: false,
        currentLocation: LatLng(data.latitude, data.longitude));
  }

  Future<LocationState> setExploreCity(LocationState state) async {
    final String streetview, googlemap, twitter, twitterContent, twitterUrl;
    streetview =
        "https://www.google.com/maps/@?api=1&map_action=pano&viewpoint=" +
            state.cityData.lat.toString() +
            "," +
            state.cityData.lng.toString();

    googlemap = "https://www.google.com/maps/search/?api=1&query=" +
        state.cityData.lat.toString() +
        "," +
        state.cityData.lng.toString() +
        "&query_place_id=" +
        state.cityData.placeId.toString();

    twitterUrl =
        "https://trander.net/kw/share/" + state.cityData.placeId.toString();

    twitterContent = "How about this place?%0a%0a%20%23Trander%0a%0a" +
        state.cityData.name.toString() +
        "%0a";

    twitter = "https://twitter.com/intent/tweet?text=" +
        twitterContent +
        "&url=" +
        twitterUrl;

    return state.copyWith(
        cityExploreState: CityExploreState.fromJson({
      'googlemap': googlemap,
      'streetview': streetview,
      'twitter': twitter
    }));
  }

  Future<LocationState> setNewLocation(
      LocationState state, double lat, double lng) async {
    return state.copyWith(newLocation: LatLng(lat, lng));
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
}
