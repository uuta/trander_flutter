import '/import.dart';
import 'location_error_dialog_view.dart';
import '/views/locations/city_info_button_view.dart';
import '/views/locations/city_dialog_view.dart';
import '/views/locations/keyword_text_field_view.dart';

class LocationView extends HookConsumerWidget {
  const LocationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth0State = ref.watch(auth0NotifierProvider);
    final locationState = ref.watch(locationNotifierProvider);
    final locationNotifier = ref.watch(locationNotifierProvider.notifier);
    final navigationState = ref.watch(navigationNotifierProvider);

    useEffect(() {
      Future.microtask(() async {
        await locationNotifier.switchMapBusy(true);
        await locationNotifier.initMapAction();
        await locationNotifier.getCurrentLocation();
        await locationNotifier.getSetting(auth0State.idToken);
        await locationNotifier.shiftCameraCurrentPosition();
        await locationNotifier.switchMapBusy(false);
      });
      return;
    }, const []);

    // City dialog
    if (locationState.isCityDialog) {
      showCityDialog(context);
    }

    return Scaffold(
        body: locationState.isMapBusy
            ? Center(
                child: CircularProgressIndicator(
                color: Theme.of(context).primaryColorLight,
              ))
            : Stack(children: [
                GoogleMap(
                  mapType: MapType.normal,
                  myLocationButtonEnabled: true,
                  myLocationEnabled: true,
                  zoomControlsEnabled: false,
                  initialCameraPosition: CameraPosition(
                    target: locationState.currentLocation,
                    zoom: 14.4746,
                  ),
                  markers: locationState.markers,
                  onMapCreated: (GoogleMapController controller) {
                    if (!locationState.mapController.isCompleted) {
                      locationState.mapController.complete(controller);
                    }
                  },
                ),
                // Loading and error dialog
                Positioned(
                    top: 100.0,
                    left: 30.0,
                    right: 30.0,
                    bottom: 100.0,
                    child: locationState.isLoading
                        ? Center(
                            child: CircularProgressIndicator(
                            color: Theme.of(context).primaryColorLight,
                          ))
                        : locationState.errorMessage == ''
                            ? Text(locationState.keywordSearchData.toString())
                            : const LocationErrorDialogView()),
                // Left bottom button
                if (locationState.isCitySucceeded) const CityInfoButtonView(),
                // Keyword text field
                if (navigationState.currentIndex ==
                    NavigationStateNotifier.pages['keyword'])
                  const KeywordTextFieldView(),
              ]),
        floatingActionButton: FloatingActionButton(
            onPressed: () async {
              navigationState.currentIndex ==
                      NavigationStateNotifier.pages['city']
                  ? locationNotifier.getCity(auth0State.idToken)
                  : locationNotifier.getKeywordSearch(auth0State.idToken);
            },
            child: const Icon(Icons.location_searching)));
  }

  // City dialog
  void showCityDialog(BuildContext context) {
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext childContext) {
            return const CityDialogView(
              title: 'Found succcessfully',
              buttonText: 'Close',
            );
          });
    });
  }
}
