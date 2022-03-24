import '/import.dart';
import 'dart:async';

final locationNotifierProvider =
    StateNotifierProvider<LocationStateNotifier, LocationState>(
  (ref) => LocationStateNotifier(),
);

class LocationStateNotifier extends StateNotifier<LocationState> {
  LocationStateNotifier()
      : super(LocationState(
          mapController: Completer(),
          settingData: const SettingState(),
          cityData: const CityState(),
          cityExploreState: const CityExploreState(),
          keywordSearchData: const KeywordSearchState(),
          keywordSearchExploreState: const KeywordSearchExploreState(),
        ));

  Future<void> initMapAction() async {
    state = state.copyWith(mapController: Completer());
  }

  Future<void> initSettingAction() async {
    final settingMode =
        await const FlutterSecureStorage().read(key: 'settingMode');
    final int intSettingMode = settingMode != null ? int.parse(settingMode) : 0;
    state = state.copyWith(settingMode: intSettingMode);
  }

  Future<void> switchPageLoading(bool isTrue) async {
    state = state.copyWith(isPageLoading: isTrue);
  }

  Future<void> offErrorMessage() async {
    state = state.copyWith(errorMessage: '');
  }

  Future<void> switchCityDialog(bool isTrue) async {
    state = state.copyWith(isCityDialog: isTrue);
  }

  Future<void> switchKeywordSearchDialog(bool isTrue) async {
    state = state.copyWith(isKeywordSearchDialog: isTrue);
  }

  Future<void> setKeywordSearchData(KeywordSearchState data) async {
    state = state.copyWith(keywordSearchData: data);
  }

  Future<void> _succeedKeywordSearch() async {
    state = state.copyWith(
        isLoading: false,
        isKeywordSearchSucceeded: true,
        isKeywordSearchDialog: true);
  }

  Future<void> setKeyword(String data) async {
    state = state.copyWith(keyword: data);
  }

  Future<void> setMode(int data) async {
    const FlutterSecureStorage()
        .write(key: 'settingMode', value: data.toString());
    state = state.copyWith(settingMode: data);
  }

  Future<void> _failedRequest(Exception e, StackTrace s) async {
    debugPrint('error: $e - stack: $s');
    (ErrorHandler.getApiError(e) == const ErrorHandler.paymentRequired())
        ? state = state.copyWith(isLoading: false, paymentPage: true)
        : state = state.copyWith(
            isLoading: false,
            errorMessage: ErrorHandler.getApiError(e).errorMessage);
  }

  Future<void> getCurrentLocation() async {
    try {
      state = await LocationService().getCurrentLocation(state);
    } on Exception catch (e, s) {
      _failedRequest(e, s);
    }
  }

  Future<void> shiftCameraCurrentPosition() async {
    try {
      LocationService().shiftCameraPosition(state, state.currentLocation);
    } on Exception catch (e, s) {
      _failedRequest(e, s);
    }
  }

  Future<void> shiftCameraPosition(double lat, double lng) async {
    state = await LocationService().setNewLocation(state, lat, lng);
    state = await LocationService().setMarker(state);
    await LocationService().shiftCameraPosition(state, state.newLocation);
  }

  Future<void> getCity(String? idToken) async {
    try {
      state = state.copyWith(isLoading: true);
      state = await CityService().getCity(state, idToken);

      // Store location explore data
      state = await LocationExploreDataService(
        state: state,
        lat: state.cityData.lat.toString(),
        lng: state.cityData.lng.toString(),
        placeId: state.cityData.placeId.toString(),
        name: state.cityData.name.toString(),
      ).storeCityExploreData();

      // Shift camera position
      await shiftCameraPosition(state.cityData.lat, state.cityData.lng);

      state = state.copyWith(
          isLoading: false, isCitySucceeded: true, isCityDialog: true);
    } on Exception catch (e, s) {
      _failedRequest(e, s);
    }
  }

  Future<void> getSimpleCity(String? idToken) async {
    try {
      state = state.copyWith(isLoading: true);
      state = await CityService().getCity(state, idToken);

      // Store location explore data
      state = await LocationExploreDataService(
        state: state,
        lat: state.cityData.lat.toString(),
        lng: state.cityData.lng.toString(),
        placeId: state.cityData.placeId.toString(),
        name: state.cityData.name.toString(),
      ).storeCityExploreData();

      state = await LocationService()
          .setNewLocation(state, state.cityData.lat, state.cityData.lng);
      state = state.copyWith(
          isLoading: false, isCitySucceeded: true, isCityDialog: true);
    } on Exception catch (e, s) {
      _failedRequest(e, s);
    }
  }

  Future<void> getKeywordSearch(String? idToken) async {
    try {
      state = state.copyWith(isLoading: true);

      await _processKeywordSearch(idToken);

      // Shift camera position
      await shiftCameraPosition(
          state.keywordSearchData.lat, state.keywordSearchData.lng);

      _succeedKeywordSearch();
    } on Exception catch (e, s) {
      _failedRequest(e, s);
    }
  }

  Future<void> getSimpleKeywordSearch(String? idToken) async {
    try {
      state = state.copyWith(isLoading: true);

      await _processKeywordSearch(idToken);

      state = await LocationService().setNewLocation(
          state, state.keywordSearchData.lat, state.keywordSearchData.lng);

      _succeedKeywordSearch();
    } on Exception catch (e, s) {
      _failedRequest(e, s);
    }
  }

  Future<void> _processKeywordSearch(String? idToken) async {
    final double lat = state.currentLocation.latitude;
    final double lng = state.currentLocation.longitude;

    FocusManager.instance.primaryFocus?.unfocus();

    final kwRes = await KeywordSearchService().getKeywordSearch(state, idToken);

    if (kwRes.data['data'].isEmpty) {
      throw const EmptyResponseException('Keyword search data is empty');
    }

    final kwData = kwRes.data['data'] as Map;
    final distanceRes = await DistanceService().getDistance(
      state,
      idToken,
      lat,
      lng,
      kwData['lat'],
      kwData['lng'],
    );
    setKeywordSearchData(KeywordSearchState.fromJson(
        {...kwRes.data['data'], ...distanceRes.data}));

    // Store location explore data
    state = await LocationExploreDataService(
      state: state,
      lat: state.keywordSearchData.lat.toString(),
      lng: state.keywordSearchData.lng.toString(),
      placeId: state.keywordSearchData.placeId.toString(),
      name: state.keywordSearchData.name.toString(),
    ).storeKeywordSearchExploreData();
  }

  Future<void> getSetting(String? idToken) async {
    try {
      state = await SettingService().getSetting(state, idToken);
    } on Exception catch (e, s) {
      _failedRequest(e, s);
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
      state = await SettingService().postSetting(state, idToken);
    } on Exception catch (e, s) {
      _failedRequest(e, s);
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
