import '/import.dart';

class LocationGooglemapView extends HookConsumerWidget {
  const LocationGooglemapView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locationState = ref.watch(locationNotifierProvider);

    return GoogleMap(
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
    );
  }
}
