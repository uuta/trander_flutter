import '/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';

part 'location_state.freezed.dart';

@freezed
class LocationState with _$LocationState {
  const factory LocationState({
    @Default(false) bool isLoading,
    @Default(false) bool isPageLoading,
    required Completer<GoogleMapController> mapController,
    @Default(LatLng(35.658034, 139.701636)) LatLng currentLocation,
    @Default(LatLng(35.658034, 139.701636)) LatLng newLocation,
    @Default({}) Set<Marker> markers,
    @Default(false) bool isCitySucceeded,
    @Default(false) bool isCityDialog,
    required CityState cityData,
    required CityExploreState cityExploreState,
    @Default(false) bool isKeywordSearchSucceeded,
    @Default(false) bool isKeywordSearchDialog,
    required KeywordSearchState keywordSearchData,
    required KeywordSearchExploreState keywordSearchExploreState,
    @Default('') String keyword,
    required SettingState settingData,
    @Default(0) int settingMode,
    @Default(false) bool purchaseDialog,
    @Default('') String purchaseErrorMessage,
    @Default('') String errorMessage,
  }) = _LocationState;
}
