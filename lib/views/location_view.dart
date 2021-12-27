import '/import.dart';
import '/models/controllers/location/location_controller.dart';
import '/models/controllers/city/city_controller.dart';
import '/models/controllers/auth0/auth0_controller.dart';

class LocationView extends HookConsumerWidget {
  const LocationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locationState = ref.read(locationNotifierProvider);
    final locationNotifier = ref.watch(locationNotifierProvider.notifier);
    final cityState = ref.watch(cityNotifierProvider);
    final cityNotifier = ref.watch(cityNotifierProvider.notifier);
    final auth0State = ref.read(auth0NotifierProvider);

    useEffect(() {
      Future.microtask(() async {
        await locationNotifier.initAction();
        await locationNotifier.getCurrentLocation();
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
                    child: Text(cityState.toString()))
              ]),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              // locationNotifier.getNewLocation();
              cityNotifier.getCity(auth0State.idToken);
            },
            child: const Icon(Icons.location_searching)));
  }
}
