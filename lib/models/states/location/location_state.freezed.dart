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
      {bool isBusy = false,
      required Completer<GoogleMapController> mapController,
      LatLng currentLocation = const LatLng(35.658034, 139.701636),
      LatLng newLocation = const LatLng(35.658034, 139.701636),
      Set<Marker> markers = const {},
      required CityState cityData,
      required SettingState settingData,
      String errorMessage = ''}) {
    return _LocationState(
      isBusy: isBusy,
      mapController: mapController,
      currentLocation: currentLocation,
      newLocation: newLocation,
      markers: markers,
      cityData: cityData,
      settingData: settingData,
      errorMessage: errorMessage,
    );
  }
}

/// @nodoc
const $LocationState = _$LocationStateTearOff();

/// @nodoc
mixin _$LocationState {
  bool get isBusy => throw _privateConstructorUsedError;
  Completer<GoogleMapController> get mapController =>
      throw _privateConstructorUsedError;
  LatLng get currentLocation => throw _privateConstructorUsedError;
  LatLng get newLocation => throw _privateConstructorUsedError;
  Set<Marker> get markers => throw _privateConstructorUsedError;
  CityState get cityData => throw _privateConstructorUsedError;
  SettingState get settingData => throw _privateConstructorUsedError;
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
      {bool isBusy,
      Completer<GoogleMapController> mapController,
      LatLng currentLocation,
      LatLng newLocation,
      Set<Marker> markers,
      CityState cityData,
      SettingState settingData,
      String errorMessage});

  $CityStateCopyWith<$Res> get cityData;
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
    Object? isBusy = freezed,
    Object? mapController = freezed,
    Object? currentLocation = freezed,
    Object? newLocation = freezed,
    Object? markers = freezed,
    Object? cityData = freezed,
    Object? settingData = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      isBusy: isBusy == freezed
          ? _value.isBusy
          : isBusy // ignore: cast_nullable_to_non_nullable
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
      cityData: cityData == freezed
          ? _value.cityData
          : cityData // ignore: cast_nullable_to_non_nullable
              as CityState,
      settingData: settingData == freezed
          ? _value.settingData
          : settingData // ignore: cast_nullable_to_non_nullable
              as SettingState,
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
      {bool isBusy,
      Completer<GoogleMapController> mapController,
      LatLng currentLocation,
      LatLng newLocation,
      Set<Marker> markers,
      CityState cityData,
      SettingState settingData,
      String errorMessage});

  @override
  $CityStateCopyWith<$Res> get cityData;
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
    Object? isBusy = freezed,
    Object? mapController = freezed,
    Object? currentLocation = freezed,
    Object? newLocation = freezed,
    Object? markers = freezed,
    Object? cityData = freezed,
    Object? settingData = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_LocationState(
      isBusy: isBusy == freezed
          ? _value.isBusy
          : isBusy // ignore: cast_nullable_to_non_nullable
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
      cityData: cityData == freezed
          ? _value.cityData
          : cityData // ignore: cast_nullable_to_non_nullable
              as CityState,
      settingData: settingData == freezed
          ? _value.settingData
          : settingData // ignore: cast_nullable_to_non_nullable
              as SettingState,
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
      {this.isBusy = false,
      required this.mapController,
      this.currentLocation = const LatLng(35.658034, 139.701636),
      this.newLocation = const LatLng(35.658034, 139.701636),
      this.markers = const {},
      required this.cityData,
      required this.settingData,
      this.errorMessage = ''});

  @JsonKey()
  @override
  final bool isBusy;
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
  @override
  final CityState cityData;
  @override
  final SettingState settingData;
  @JsonKey()
  @override
  final String errorMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationState(isBusy: $isBusy, mapController: $mapController, currentLocation: $currentLocation, newLocation: $newLocation, markers: $markers, cityData: $cityData, settingData: $settingData, errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocationState'))
      ..add(DiagnosticsProperty('isBusy', isBusy))
      ..add(DiagnosticsProperty('mapController', mapController))
      ..add(DiagnosticsProperty('currentLocation', currentLocation))
      ..add(DiagnosticsProperty('newLocation', newLocation))
      ..add(DiagnosticsProperty('markers', markers))
      ..add(DiagnosticsProperty('cityData', cityData))
      ..add(DiagnosticsProperty('settingData', settingData))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocationState &&
            const DeepCollectionEquality().equals(other.isBusy, isBusy) &&
            const DeepCollectionEquality()
                .equals(other.mapController, mapController) &&
            const DeepCollectionEquality()
                .equals(other.currentLocation, currentLocation) &&
            const DeepCollectionEquality()
                .equals(other.newLocation, newLocation) &&
            const DeepCollectionEquality().equals(other.markers, markers) &&
            const DeepCollectionEquality().equals(other.cityData, cityData) &&
            const DeepCollectionEquality()
                .equals(other.settingData, settingData) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isBusy),
      const DeepCollectionEquality().hash(mapController),
      const DeepCollectionEquality().hash(currentLocation),
      const DeepCollectionEquality().hash(newLocation),
      const DeepCollectionEquality().hash(markers),
      const DeepCollectionEquality().hash(cityData),
      const DeepCollectionEquality().hash(settingData),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$LocationStateCopyWith<_LocationState> get copyWith =>
      __$LocationStateCopyWithImpl<_LocationState>(this, _$identity);
}

abstract class _LocationState implements LocationState {
  const factory _LocationState(
      {bool isBusy,
      required Completer<GoogleMapController> mapController,
      LatLng currentLocation,
      LatLng newLocation,
      Set<Marker> markers,
      required CityState cityData,
      required SettingState settingData,
      String errorMessage}) = _$_LocationState;

  @override
  bool get isBusy;
  @override
  Completer<GoogleMapController> get mapController;
  @override
  LatLng get currentLocation;
  @override
  LatLng get newLocation;
  @override
  Set<Marker> get markers;
  @override
  CityState get cityData;
  @override
  SettingState get settingData;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$LocationStateCopyWith<_LocationState> get copyWith =>
      throw _privateConstructorUsedError;
}
