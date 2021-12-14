import '/import.dart';
import '/models/controllers/location/location_controller.dart';

class LocationView extends HookConsumerWidget {
  const LocationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locationState = ref.watch(locationNotifierProvider);
    final locationNotifier = ref.watch(locationNotifierProvider.notifier);

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
            : GoogleMap(
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
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              locationNotifier.getNewLocation();
            },
            child: const Icon(Icons.location_searching)));
  }
}
