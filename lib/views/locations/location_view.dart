import '/import.dart';
import 'location_error_dialog_view.dart';
import '/views/locations/city_info_button_view.dart';
import '/views/locations/city_dialog_view.dart';

class LocationView extends HookConsumerWidget {
  const LocationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth0State = ref.watch(auth0NotifierProvider);
    final locationState = ref.watch(locationNotifierProvider);
    final locationNotifier = ref.watch(locationNotifierProvider.notifier);

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

    return Scaffold(
        body: locationState.isMapBusy
            ? const Center(child: CircularProgressIndicator())
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
                    // TODO: Consider that how to show a progress indicator
                    child: locationState.isLoading
                        ? const Center(child: CircularProgressIndicator())
                        : locationState.errorMessage == ''
                            ? Text(locationState.cityData.toString())
                            : const LocationErrorDialogView()),
                // Left bottom button
                if (locationState.isCitySucceeded) const CityInfoButtonView(),
                // City dialog
                if (locationState.isCityDialog)
                  const CityDialogView(
                    title: 'Found succcessfully',
                    description: 'yattane',
                    buttonText: 'Close',
                  ),
              ]),
        floatingActionButton: FloatingActionButton(
            onPressed: () async {
              locationNotifier.getCity(auth0State.idToken);
            },
            child: const Icon(Icons.location_searching)));
  }
}
