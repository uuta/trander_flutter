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
          cityExploreState: const ExternalURLsState(),
          keywordSearchData: const KeywordSearchState(),
          backpackerData: const BackpackerState(),
          backpackerExploreState: const ExternalURLsState(),
          keywordSearchExploreState: const ExternalURLsState(),
          keywordTextEditingController: TextEditingController(),
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

  Future<void> switchPageLoading(bool v) async {
    state = state.copyWith(isPageLoading: v);
  }

  Future<void> offErrorMessage() async {
    state = state.copyWith(errorMessage: '');
  }

  Future<void> switchCityDialog(bool v) async {
    state = state.copyWith(isCityDialog: v);
  }

  Future<void> switchKeywordSearchDialog(bool v) async {
    state = state.copyWith(isKeywordSearchDialog: v);
  }

  Future<void> setKeywordSearchData(KeywordSearchState data) async {
    state = state.copyWith(keywordSearchData: data);
  }

  Future<void> setBackpackerData(BackpackerState data) async {
    state = state.copyWith(backpackerData: data);
  }

  Future<void> switchPaymantDialog(bool v) async {
    state = state.copyWith(purchaseDialog: v);
  }

  Future<void> _succeedKeywordSearch() async {
    state = state.copyWith(
        isLoading: false,
        isKeywordSearchSucceeded: true,
        isKeywordSearchDialog: true);
  }

  Future<void> setMode(int data) async {
    const FlutterSecureStorage()
        .write(key: 'settingMode', value: data.toString());
    state = state.copyWith(settingMode: data);
  }

  Future<void> _failedRequest(Exception e, StackTrace s) async {
    debugPrint('error: $e - stack: $s');
    (ErrorHandler.getApiError(e).type == 'paymentRequired')
        ? state = state.copyWith(
            isLoading: false,
            purchaseDialog: true,
            purchaseErrorMessage: ErrorHandler.getApiError(e).errorMessage)
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

  Future<void> getCity(String? accessToken) async {
    try {
      state = state.copyWith(isLoading: true);
      state = await CityService().getCity(state, accessToken);

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

  Future<void> getSimpleCity(String? accessToken) async {
    try {
      state = state.copyWith(isLoading: true);
      state = await CityService().getCity(state, accessToken);

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
    } on DioError catch (e, s) {
      if (e.response != null) {
        if (e.response!.statusCode == 404) {
          state = state.copyWith(isLoading: false, show404Dialog: true);
          return;
        }
      }
      _failedRequest(e, s);
    } on Exception catch (e, s) {
      _failedRequest(e, s);
    }
  }

  Future<void> getCityBackpacker(String? accessToken) async {
    try {
      state = state.copyWith(isLoading: true);
      state = await CityBackpackerService().get(state, accessToken);

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
    } on DioError catch (e, s) {
      if (e.response != null) {
        if (e.response!.statusCode == 404) {
          state = state.copyWith(isLoading: false, show404Dialog: true);
          return;
        }
      }
      _failedRequest(e, s);
    } on Exception catch (e, s) {
      _failedRequest(e, s);
    }
  }

  Future<void> getKeywordSearch(String? accessToken) async {
    try {
      state = state.copyWith(isLoading: true);

      await _processKeywordSearch(accessToken);

      // Shift camera position
      await shiftCameraPosition(
          state.keywordSearchData.lat, state.keywordSearchData.lng);

      _succeedKeywordSearch();
    } on DioError catch (e, s) {
      if (e.response != null) {
        if (e.response!.statusCode == 404) {
          state = state.copyWith(isLoading: false, show404Dialog: true);
          return;
        }
      }
      _failedRequest(e, s);
    } on Exception catch (e, s) {
      _failedRequest(e, s);
    }
  }

  Future<void> getSimpleKeywordSearch(String? accessToken) async {
    try {
      state = state.copyWith(isLoading: true);

      await _processKeywordSearch(accessToken);

      state = await LocationService().setNewLocation(
          state, state.keywordSearchData.lat, state.keywordSearchData.lng);

      _succeedKeywordSearch();
    } on DioError catch (e, s) {
      if (e.response != null) {
        if (e.response!.statusCode == 404) {
          state = state.copyWith(isLoading: false, show404Dialog: true);
          return;
        }
      }
      _failedRequest(e, s);
    } on Exception catch (e, s) {
      _failedRequest(e, s);
    }
  }

  Future<void> _processKeywordSearch(String? accessToken) async {
    FocusManager.instance.primaryFocus?.unfocus();

    final kwRes =
        await KeywordSearchService().getKeywordSearch(state, accessToken);

    if (kwRes.data.isEmpty) {
      throw const EmptyResponseException('Keyword search data is empty');
    }

    setKeywordSearchData(KeywordSearchState.fromJson({...kwRes.data}));

    // Store location explore data
    state = await LocationExploreDataService(
      state: state,
      lat: state.keywordSearchData.lat.toString(),
      lng: state.keywordSearchData.lng.toString(),
      placeId: state.keywordSearchData.placeId.toString(),
      name: state.keywordSearchData.name.toString(),
    ).storeKeywordSearchExploreData();
  }

  Future<void> getBackpacker(String? accessToken) async {
    try {
      state = state.copyWith(isLoading: true);

      await _processBackpacker(accessToken);

      _succeedKeywordSearch();
    } on Exception catch (e, s) {
      _failedRequest(e, s);
    }
  }

  Future<void> _processBackpacker(String? accessToken) async {
    FocusManager.instance.primaryFocus?.unfocus();

    final res =
        await BackpackerService().getBackpacker(accessToken, state.keywordText);

    if (res.data.isEmpty) {
      throw const EmptyResponseException('Keyword search data is empty');
    }
    setKeywordSearchData(KeywordSearchState.fromJson({...res.data}));

    // Store location explore data
    state = await LocationExploreDataService(
      state: state,
      lat: state.keywordSearchData.lat.toString(),
      lng: state.keywordSearchData.lng.toString(),
      placeId: state.keywordSearchData.placeId.toString(),
      name: state.keywordSearchData.name.toString(),
    ).storeKeywordSearchExploreData();
  }

  Future<void> getSetting(String? accessToken) async {
    try {
      state = await SettingService().getSetting(state, accessToken);
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
      String? accessToken, NavigationState navigationState) async {
    // Request only when shifting from page three
    if (navigationState.currentIndex == 2) {
      return;
    }

    if (navigationState.prevIndex != 2) {
      return;
    }

    try {
      state = await SettingService().postSetting(state, accessToken);
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

  Future<void> setLocationType(LocationType locationType) async {
    state = state.copyWith(locationType: locationType);
  }

  setKeyword(String keyword) {
    state = state.copyWith(keywordText: keyword);
  }

  setControllerKeyword(String keyword) {
    state.keywordTextEditingController.text = keyword;
  }

  switch404Dialog(bool v) {
    state = state.copyWith(show404Dialog: v);
  }
}
