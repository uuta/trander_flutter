// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LocationStateTearOff {
  const _$LocationStateTearOff();

  _LocationState call(
      {bool isLoading = false,
      bool isPageLoading = false,
      required Completer<GoogleMapController> mapController,
      LatLng currentLocation = const LatLng(35.658034, 139.701636),
      LatLng newLocation = const LatLng(35.658034, 139.701636),
      Set<Marker> markers = const {},
      bool isCitySucceeded = false,
      bool isCityDialog = false,
      required CityState cityData,
      required CityExploreState cityExploreState,
      bool isKeywordSearchSucceeded = false,
      bool isKeywordSearchDialog = false,
      required KeywordSearchState keywordSearchData,
      required KeywordSearchExploreState keywordSearchExploreState,
      String keyword = '',
      required SettingState settingData,
      int settingMode = 0,
      String errorMessage = ''}) {
    return _LocationState(
      isLoading: isLoading,
      isPageLoading: isPageLoading,
      mapController: mapController,
      currentLocation: currentLocation,
      newLocation: newLocation,
      markers: markers,
      isCitySucceeded: isCitySucceeded,
      isCityDialog: isCityDialog,
      cityData: cityData,
      cityExploreState: cityExploreState,
      isKeywordSearchSucceeded: isKeywordSearchSucceeded,
      isKeywordSearchDialog: isKeywordSearchDialog,
      keywordSearchData: keywordSearchData,
      keywordSearchExploreState: keywordSearchExploreState,
      keyword: keyword,
      settingData: settingData,
      settingMode: settingMode,
      errorMessage: errorMessage,
    );
  }
}

/// @nodoc
const $LocationState = _$LocationStateTearOff();

/// @nodoc
mixin _$LocationState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isPageLoading => throw _privateConstructorUsedError;
  Completer<GoogleMapController> get mapController =>
      throw _privateConstructorUsedError;
  LatLng get currentLocation => throw _privateConstructorUsedError;
  LatLng get newLocation => throw _privateConstructorUsedError;
  Set<Marker> get markers => throw _privateConstructorUsedError;
  bool get isCitySucceeded => throw _privateConstructorUsedError;
  bool get isCityDialog => throw _privateConstructorUsedError;
  CityState get cityData => throw _privateConstructorUsedError;
  CityExploreState get cityExploreState => throw _privateConstructorUsedError;
  bool get isKeywordSearchSucceeded => throw _privateConstructorUsedError;
  bool get isKeywordSearchDialog => throw _privateConstructorUsedError;
  KeywordSearchState get keywordSearchData =>
      throw _privateConstructorUsedError;
  KeywordSearchExploreState get keywordSearchExploreState =>
      throw _privateConstructorUsedError;
  String get keyword => throw _privateConstructorUsedError;
  SettingState get settingData => throw _privateConstructorUsedError;
  int get settingMode => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationStateCopyWith<LocationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationStateCopyWith<$Res> {
  factory $LocationStateCopyWith(
          LocationState value, $Res Function(LocationState) then) =
      _$LocationStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool isPageLoading,
      Completer<GoogleMapController> mapController,
      LatLng currentLocation,
      LatLng newLocation,
      Set<Marker> markers,
      bool isCitySucceeded,
      bool isCityDialog,
      CityState cityData,
      CityExploreState cityExploreState,
      bool isKeywordSearchSucceeded,
      bool isKeywordSearchDialog,
      KeywordSearchState keywordSearchData,
      KeywordSearchExploreState keywordSearchExploreState,
      String keyword,
      SettingState settingData,
      int settingMode,
      String errorMessage});

  $CityStateCopyWith<$Res> get cityData;
  $CityExploreStateCopyWith<$Res> get cityExploreState;
  $KeywordSearchStateCopyWith<$Res> get keywordSearchData;
  $KeywordSearchExploreStateCopyWith<$Res> get keywordSearchExploreState;
  $SettingStateCopyWith<$Res> get settingData;
}

/// @nodoc
class _$LocationStateCopyWithImpl<$Res>
    implements $LocationStateCopyWith<$Res> {
  _$LocationStateCopyWithImpl(this._value, this._then);

  final LocationState _value;
  // ignore: unused_field
  final $Res Function(LocationState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isPageLoading = freezed,
    Object? mapController = freezed,
    Object? currentLocation = freezed,
    Object? newLocation = freezed,
    Object? markers = freezed,
    Object? isCitySucceeded = freezed,
    Object? isCityDialog = freezed,
    Object? cityData = freezed,
    Object? cityExploreState = freezed,
    Object? isKeywordSearchSucceeded = freezed,
    Object? isKeywordSearchDialog = freezed,
    Object? keywordSearchData = freezed,
    Object? keywordSearchExploreState = freezed,
    Object? keyword = freezed,
    Object? settingData = freezed,
    Object? settingMode = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isPageLoading: isPageLoading == freezed
          ? _value.isPageLoading
          : isPageLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      mapController: mapController == freezed
          ? _value.mapController
          : mapController // ignore: cast_nullable_to_non_nullable
              as Completer<GoogleMapController>,
      currentLocation: currentLocation == freezed
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as LatLng,
      newLocation: newLocation == freezed
          ? _value.newLocation
          : newLocation // ignore: cast_nullable_to_non_nullable
              as LatLng,
      markers: markers == freezed
          ? _value.markers
          : markers // ignore: cast_nullable_to_non_nullable
              as Set<Marker>,
      isCitySucceeded: isCitySucceeded == freezed
          ? _value.isCitySucceeded
          : isCitySucceeded // ignore: cast_nullable_to_non_nullable
              as bool,
      isCityDialog: isCityDialog == freezed
          ? _value.isCityDialog
          : isCityDialog // ignore: cast_nullable_to_non_nullable
              as bool,
      cityData: cityData == freezed
          ? _value.cityData
          : cityData // ignore: cast_nullable_to_non_nullable
              as CityState,
      cityExploreState: cityExploreState == freezed
          ? _value.cityExploreState
          : cityExploreState // ignore: cast_nullable_to_non_nullable
              as CityExploreState,
      isKeywordSearchSucceeded: isKeywordSearchSucceeded == freezed
          ? _value.isKeywordSearchSucceeded
          : isKeywordSearchSucceeded // ignore: cast_nullable_to_non_nullable
              as bool,
      isKeywordSearchDialog: isKeywordSearchDialog == freezed
          ? _value.isKeywordSearchDialog
          : isKeywordSearchDialog // ignore: cast_nullable_to_non_nullable
              as bool,
      keywordSearchData: keywordSearchData == freezed
          ? _value.keywordSearchData
          : keywordSearchData // ignore: cast_nullable_to_non_nullable
              as KeywordSearchState,
      keywordSearchExploreState: keywordSearchExploreState == freezed
          ? _value.keywordSearchExploreState
          : keywordSearchExploreState // ignore: cast_nullable_to_non_nullable
              as KeywordSearchExploreState,
      keyword: keyword == freezed
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
      settingData: settingData == freezed
          ? _value.settingData
          : settingData // ignore: cast_nullable_to_non_nullable
              as SettingState,
      settingMode: settingMode == freezed
          ? _value.settingMode
          : settingMode // ignore: cast_nullable_to_non_nullable
              as int,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $CityStateCopyWith<$Res> get cityData {
    return $CityStateCopyWith<$Res>(_value.cityData, (value) {
      return _then(_value.copyWith(cityData: value));
    });
  }

  @override
  $CityExploreStateCopyWith<$Res> get cityExploreState {
    return $CityExploreStateCopyWith<$Res>(_value.cityExploreState, (value) {
      return _then(_value.copyWith(cityExploreState: value));
    });
  }

  @override
  $KeywordSearchStateCopyWith<$Res> get keywordSearchData {
    return $KeywordSearchStateCopyWith<$Res>(_value.keywordSearchData, (value) {
      return _then(_value.copyWith(keywordSearchData: value));
    });
  }

  @override
  $KeywordSearchExploreStateCopyWith<$Res> get keywordSearchExploreState {
    return $KeywordSearchExploreStateCopyWith<$Res>(
        _value.keywordSearchExploreState, (value) {
      return _then(_value.copyWith(keywordSearchExploreState: value));
    });
  }

  @override
  $SettingStateCopyWith<$Res> get settingData {
    return $SettingStateCopyWith<$Res>(_value.settingData, (value) {
      return _then(_value.copyWith(settingData: value));
    });
  }
}

/// @nodoc
abstract class _$LocationStateCopyWith<$Res>
    implements $LocationStateCopyWith<$Res> {
  factory _$LocationStateCopyWith(
          _LocationState value, $Res Function(_LocationState) then) =
      __$LocationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool isPageLoading,
      Completer<GoogleMapController> mapController,
      LatLng currentLocation,
      LatLng newLocation,
      Set<Marker> markers,
      bool isCitySucceeded,
      bool isCityDialog,
      CityState cityData,
      CityExploreState cityExploreState,
      bool isKeywordSearchSucceeded,
      bool isKeywordSearchDialog,
      KeywordSearchState keywordSearchData,
      KeywordSearchExploreState keywordSearchExploreState,
      String keyword,
      SettingState settingData,
      int settingMode,
      String errorMessage});

  @override
  $CityStateCopyWith<$Res> get cityData;
  @override
  $CityExploreStateCopyWith<$Res> get cityExploreState;
  @override
  $KeywordSearchStateCopyWith<$Res> get keywordSearchData;
  @override
  $KeywordSearchExploreStateCopyWith<$Res> get keywordSearchExploreState;
  @override
  $SettingStateCopyWith<$Res> get settingData;
}

/// @nodoc
class __$LocationStateCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res>
    implements _$LocationStateCopyWith<$Res> {
  __$LocationStateCopyWithImpl(
      _LocationState _value, $Res Function(_LocationState) _then)
      : super(_value, (v) => _then(v as _LocationState));

  @override
  _LocationState get _value => super._value as _LocationState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isPageLoading = freezed,
    Object? mapController = freezed,
    Object? currentLocation = freezed,
    Object? newLocation = freezed,
    Object? markers = freezed,
    Object? isCitySucceeded = freezed,
    Object? isCityDialog = freezed,
    Object? cityData = freezed,
    Object? cityExploreState = freezed,
    Object? isKeywordSearchSucceeded = freezed,
    Object? isKeywordSearchDialog = freezed,
    Object? keywordSearchData = freezed,
    Object? keywordSearchExploreState = freezed,
    Object? keyword = freezed,
    Object? settingData = freezed,
    Object? settingMode = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_LocationState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isPageLoading: isPageLoading == freezed
          ? _value.isPageLoading
          : isPageLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      mapController: mapController == freezed
          ? _value.mapController
          : mapController // ignore: cast_nullable_to_non_nullable
              as Completer<GoogleMapController>,
      currentLocation: currentLocation == freezed
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as LatLng,
      newLocation: newLocation == freezed
          ? _value.newLocation
          : newLocation // ignore: cast_nullable_to_non_nullable
              as LatLng,
      markers: markers == freezed
          ? _value.markers
          : markers // ignore: cast_nullable_to_non_nullable
              as Set<Marker>,
      isCitySucceeded: isCitySucceeded == freezed
          ? _value.isCitySucceeded
          : isCitySucceeded // ignore: cast_nullable_to_non_nullable
              as bool,
      isCityDialog: isCityDialog == freezed
          ? _value.isCityDialog
          : isCityDialog // ignore: cast_nullable_to_non_nullable
              as bool,
      cityData: cityData == freezed
          ? _value.cityData
          : cityData // ignore: cast_nullable_to_non_nullable
              as CityState,
      cityExploreState: cityExploreState == freezed
          ? _value.cityExploreState
          : cityExploreState // ignore: cast_nullable_to_non_nullable
              as CityExploreState,
      isKeywordSearchSucceeded: isKeywordSearchSucceeded == freezed
          ? _value.isKeywordSearchSucceeded
          : isKeywordSearchSucceeded // ignore: cast_nullable_to_non_nullable
              as bool,
      isKeywordSearchDialog: isKeywordSearchDialog == freezed
          ? _value.isKeywordSearchDialog
          : isKeywordSearchDialog // ignore: cast_nullable_to_non_nullable
              as bool,
      keywordSearchData: keywordSearchData == freezed
          ? _value.keywordSearchData
          : keywordSearchData // ignore: cast_nullable_to_non_nullable
              as KeywordSearchState,
      keywordSearchExploreState: keywordSearchExploreState == freezed
          ? _value.keywordSearchExploreState
          : keywordSearchExploreState // ignore: cast_nullable_to_non_nullable
              as KeywordSearchExploreState,
      keyword: keyword == freezed
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
      settingData: settingData == freezed
          ? _value.settingData
          : settingData // ignore: cast_nullable_to_non_nullable
              as SettingState,
      settingMode: settingMode == freezed
          ? _value.settingMode
          : settingMode // ignore: cast_nullable_to_non_nullable
              as int,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LocationState with DiagnosticableTreeMixin implements _LocationState {
  const _$_LocationState(
      {this.isLoading = false,
      this.isPageLoading = false,
      required this.mapController,
      this.currentLocation = const LatLng(35.658034, 139.701636),
      this.newLocation = const LatLng(35.658034, 139.701636),
      this.markers = const {},
      this.isCitySucceeded = false,
      this.isCityDialog = false,
      required this.cityData,
      required this.cityExploreState,
      this.isKeywordSearchSucceeded = false,
      this.isKeywordSearchDialog = false,
      required this.keywordSearchData,
      required this.keywordSearchExploreState,
      this.keyword = '',
      required this.settingData,
      this.settingMode = 0,
      this.errorMessage = ''});

  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final bool isPageLoading;
  @override
  final Completer<GoogleMapController> mapController;
  @JsonKey()
  @override
  final LatLng currentLocation;
  @JsonKey()
  @override
  final LatLng newLocation;
  @JsonKey()
  @override
  final Set<Marker> markers;
  @JsonKey()
  @override
  final bool isCitySucceeded;
  @JsonKey()
  @override
  final bool isCityDialog;
  @override
  final CityState cityData;
  @override
  final CityExploreState cityExploreState;
  @JsonKey()
  @override
  final bool isKeywordSearchSucceeded;
  @JsonKey()
  @override
  final bool isKeywordSearchDialog;
  @override
  final KeywordSearchState keywordSearchData;
  @override
  final KeywordSearchExploreState keywordSearchExploreState;
  @JsonKey()
  @override
  final String keyword;
  @override
  final SettingState settingData;
  @JsonKey()
  @override
  final int settingMode;
  @JsonKey()
  @override
  final String errorMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationState(isLoading: $isLoading, isPageLoading: $isPageLoading, mapController: $mapController, currentLocation: $currentLocation, newLocation: $newLocation, markers: $markers, isCitySucceeded: $isCitySucceeded, isCityDialog: $isCityDialog, cityData: $cityData, cityExploreState: $cityExploreState, isKeywordSearchSucceeded: $isKeywordSearchSucceeded, isKeywordSearchDialog: $isKeywordSearchDialog, keywordSearchData: $keywordSearchData, keywordSearchExploreState: $keywordSearchExploreState, keyword: $keyword, settingData: $settingData, settingMode: $settingMode, errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocationState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isPageLoading', isPageLoading))
      ..add(DiagnosticsProperty('mapController', mapController))
      ..add(DiagnosticsProperty('currentLocation', currentLocation))
      ..add(DiagnosticsProperty('newLocation', newLocation))
      ..add(DiagnosticsProperty('markers', markers))
      ..add(DiagnosticsProperty('isCitySucceeded', isCitySucceeded))
      ..add(DiagnosticsProperty('isCityDialog', isCityDialog))
      ..add(DiagnosticsProperty('cityData', cityData))
      ..add(DiagnosticsProperty('cityExploreState', cityExploreState))
      ..add(DiagnosticsProperty(
          'isKeywordSearchSucceeded', isKeywordSearchSucceeded))
      ..add(DiagnosticsProperty('isKeywordSearchDialog', isKeywordSearchDialog))
      ..add(DiagnosticsProperty('keywordSearchData', keywordSearchData))
      ..add(DiagnosticsProperty(
          'keywordSearchExploreState', keywordSearchExploreState))
      ..add(DiagnosticsProperty('keyword', keyword))
      ..add(DiagnosticsProperty('settingData', settingData))
      ..add(DiagnosticsProperty('settingMode', settingMode))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocationState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.isPageLoading, isPageLoading) &&
            const DeepCollectionEquality()
                .equals(other.mapController, mapController) &&
            const DeepCollectionEquality()
                .equals(other.currentLocation, currentLocation) &&
            const DeepCollectionEquality()
                .equals(other.newLocation, newLocation) &&
            const DeepCollectionEquality().equals(other.markers, markers) &&
            const DeepCollectionEquality()
                .equals(other.isCitySucceeded, isCitySucceeded) &&
            const DeepCollectionEquality()
                .equals(other.isCityDialog, isCityDialog) &&
            const DeepCollectionEquality().equals(other.cityData, cityData) &&
            const DeepCollectionEquality()
                .equals(other.cityExploreState, cityExploreState) &&
            const DeepCollectionEquality().equals(
                other.isKeywordSearchSucceeded, isKeywordSearchSucceeded) &&
            const DeepCollectionEquality()
                .equals(other.isKeywordSearchDialog, isKeywordSearchDialog) &&
            const DeepCollectionEquality()
                .equals(other.keywordSearchData, keywordSearchData) &&
            const DeepCollectionEquality().equals(
                other.keywordSearchExploreState, keywordSearchExploreState) &&
            const DeepCollectionEquality().equals(other.keyword, keyword) &&
            const DeepCollectionEquality()
                .equals(other.settingData, settingData) &&
            const DeepCollectionEquality()
                .equals(other.settingMode, settingMode) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isPageLoading),
      const DeepCollectionEquality().hash(mapController),
      const DeepCollectionEquality().hash(currentLocation),
      const DeepCollectionEquality().hash(newLocation),
      const DeepCollectionEquality().hash(markers),
      const DeepCollectionEquality().hash(isCitySucceeded),
      const DeepCollectionEquality().hash(isCityDialog),
      const DeepCollectionEquality().hash(cityData),
      const DeepCollectionEquality().hash(cityExploreState),
      const DeepCollectionEquality().hash(isKeywordSearchSucceeded),
      const DeepCollectionEquality().hash(isKeywordSearchDialog),
      const DeepCollectionEquality().hash(keywordSearchData),
      const DeepCollectionEquality().hash(keywordSearchExploreState),
      const DeepCollectionEquality().hash(keyword),
      const DeepCollectionEquality().hash(settingData),
      const DeepCollectionEquality().hash(settingMode),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$LocationStateCopyWith<_LocationState> get copyWith =>
      __$LocationStateCopyWithImpl<_LocationState>(this, _$identity);
}

abstract class _LocationState implements LocationState {
  const factory _LocationState(
      {bool isLoading,
      bool isPageLoading,
      required Completer<GoogleMapController> mapController,
      LatLng currentLocation,
      LatLng newLocation,
      Set<Marker> markers,
      bool isCitySucceeded,
      bool isCityDialog,
      required CityState cityData,
      required CityExploreState cityExploreState,
      bool isKeywordSearchSucceeded,
      bool isKeywordSearchDialog,
      required KeywordSearchState keywordSearchData,
      required KeywordSearchExploreState keywordSearchExploreState,
      String keyword,
      required SettingState settingData,
      int settingMode,
      String errorMessage}) = _$_LocationState;

  @override
  bool get isLoading;
  @override
  bool get isPageLoading;
  @override
  Completer<GoogleMapController> get mapController;
  @override
  LatLng get currentLocation;
  @override
  LatLng get newLocation;
  @override
  Set<Marker> get markers;
  @override
  bool get isCitySucceeded;
  @override
  bool get isCityDialog;
  @override
  CityState get cityData;
  @override
  CityExploreState get cityExploreState;
  @override
  bool get isKeywordSearchSucceeded;
  @override
  bool get isKeywordSearchDialog;
  @override
  KeywordSearchState get keywordSearchData;
  @override
  KeywordSearchExploreState get keywordSearchExploreState;
  @override
  String get keyword;
  @override
  SettingState get settingData;
  @override
  int get settingMode;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$LocationStateCopyWith<_LocationState> get copyWith =>
      throw _privateConstructorUsedError;
}
