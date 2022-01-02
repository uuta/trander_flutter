import '/import.dart';

class LocationView extends HookConsumerWidget {
  const LocationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth0State = ref.watch(auth0NotifierProvider);
    final locationState = ref.watch(locationNotifierProvider);
    final locationNotifier = ref.watch(locationNotifierProvider.notifier);

    useEffect(() {
      Future.microtask(() async {
        await locationNotifier.switchBusy(true);
        await locationNotifier.initMapAction();
        await locationNotifier.getCurrentLocation();
        await locationNotifier.getSetting(auth0State.idToken);
        await locationNotifier.shiftCameraCurrentPosition();
        await locationNotifier.switchBusy(false);
      });
      return;
    }, const []);

    return Scaffold(
        body: locationState.isBusy
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
                Positioned(
                    top: 100.0,
                    left: 30.0,
                    right: 30.0,
                    bottom: 100.0,
                    // TODO:
                    child: locationState.isBusy
                        ? const Center(child: CircularProgressIndicator())
                        : Text(locationState.cityData.toString()))
              ]),
        floatingActionButton: FloatingActionButton(
            onPressed: () async {
              locationNotifier.getCity(auth0State.idToken);
            },
            child: const Icon(Icons.location_searching)));
  }
}
