import '/import.dart';
import 'dart:async';
import '/services/location_service.dart';
import '/models/models.dart';

final locationNotifierProvider =
    StateNotifierProvider<LocationStateNotifier, LocationState>(
  (ref) => LocationStateNotifier(),
);

// TODO: Think about error handling
class LocationStateNotifier extends StateNotifier<LocationState> {
  LocationStateNotifier()
      : super(LocationState(
          mapController: Completer(),
          settingData: const SettingState(),
          cityData: const CityState(),
          cityExploreState: const CityExploreState(),
        ));

  Future<void> initMapAction() async {
    state = state.copyWith(mapController: Completer());
  }

  Future<void> switchMapBusy(bool isTrue) async {
    state = state.copyWith(isMapBusy: isTrue);
  }

  Future<void> offErrorMessage() async {
    state = state.copyWith(errorMessage: '');
  }

  Future<void> switchCityDialog(bool isTrue) async {
    state = state.copyWith(isCityDialog: isTrue);
  }

  Future<void> getCurrentLocation() async {
    try {
      state = await LocationService().getCurrentLocation(state);
    } on Exception catch (e, s) {
      debugPrint('login error: $e - stack: $s');
      state = state.copyWith(
          isLoading: false,
          errorMessage: ErrorHandler.getApiError(e).errorMessage);
    }
  }

  Future<void> shiftCameraCurrentPosition() async {
    try {
      LocationService().shiftCameraPosition(state, state.currentLocation);
    } on Exception catch (e, s) {
      debugPrint('login error: $e - stack: $s');
      state = state.copyWith(
          isLoading: false,
          errorMessage: ErrorHandler.getApiError(e).errorMessage);
    }
  }

  Future<void> getCity(String? idToken) async {
    try {
      state = state.copyWith(isLoading: true);
      state = await LocationService().getCity(state, idToken);
      state = await LocationService().setExploreCity(state);
      state = await LocationService().setNewLocation(state);
      state = await LocationService().setMarker(state);
      await LocationService().shiftCameraPosition(state, state.newLocation);
      state = state.copyWith(
          isLoading: false, isCitySucceeded: true, isCityDialog: true);
    } on Exception catch (e, s) {
      debugPrint('login error: $e - stack: $s');
      state = state.copyWith(
          isLoading: false,
          errorMessage: ErrorHandler.getApiError(e).errorMessage);
    }
  }

  Future<void> getSetting(String? idToken) async {
    try {
      state = await LocationService().getSetting(state, idToken);
    } on Exception catch (e, s) {
      debugPrint('login error: $e - stack: $s');
      state = state.copyWith(
          isLoading: false,
          errorMessage: ErrorHandler.getApiError(e).errorMessage);
    }
  }

  Future<void> setRange(RangeValues newRange) async {
    state = state.copyWith(
        settingData: SettingState.fromJson({
      'minDistance': newRange.start.toInt(),
      'maxDistance': newRange.end.toInt(),
      'directionType': state.settingData.directionType,
    }));
  }

  Future<void> postSetting(
      String? idToken, NavigationState navigationState) async {
    // Request only when shifting from page three
    if (navigationState.currentIndex == 2) {
      return;
    }

    if (navigationState.prevIndex != 2) {
      return;
    }

    try {
      state = await LocationService().postSetting(state, idToken);
    } on Exception catch (e, s) {
      debugPrint('login error: $e - stack: $s');
      state = state.copyWith(
          isLoading: false,
          errorMessage: ErrorHandler.getApiError(e).errorMessage);
    }
  }

  Future<void> setDirectionType(int directionType) async {
    state = state.copyWith(
        settingData: SettingState.fromJson({
      'minDistance': state.settingData.minDistance,
      'maxDistance': state.settingData.maxDistance,
      'directionType': directionType,
    }));
  }
}
