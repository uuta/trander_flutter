import '/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'location_state.freezed.dart';

enum LocationType { backpacker, fromYourLocation }

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
    required ExternalURLsState cityExploreState,
    @Default(false) bool isKeywordSearchSucceeded,
    @Default(false) bool isKeywordSearchDialog,
    required KeywordSearchState keywordSearchData,
    required ExternalURLsState keywordSearchExploreState,
    required TextEditingController keywordTextEditingController,
    required SettingState settingData,
    required BackpackerState backpackerData,
    required ExternalURLsState backpackerExploreState,
    @Default('') String keywordText,
    @Default(0) int settingMode,
    @Default(LocationType.backpacker) LocationType locationType,
    @Default(false) bool purchaseDialog,
    @Default('') String purchaseErrorMessage,
    @Default('') String errorMessage,
  }) = _LocationState;
}
