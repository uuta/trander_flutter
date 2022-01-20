import '/import.dart';
import 'location_error_dialog_view.dart';
import '/views/organisms/keyword_searches/keyword_search_text_field_view.dart';
import '/views/molecules/dialogs/succeed_dialog_view.dart';
import '/views/atoms/buttons/icon_button_view.dart';

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
      showCityDialog(context, locationState, locationNotifier);
    }

    // Keyword search dialog
    if (locationState.isKeywordSearchDialog) {
      showKeywordSearchDialog(context, locationState, locationNotifier);
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

                // City info button
                if (navigationState.currentIndex ==
                        NavigationStateNotifier.pages['city'] &&
                    locationState.isCitySucceeded)
                  IconButtonView(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CityDetailPage()))),

                // Keyword text field
                if (navigationState.currentIndex ==
                    NavigationStateNotifier.pages['keyword'])
                  const KeywordSearchTextFieldView(),

                // Keyword info button
                if (navigationState.currentIndex ==
                        NavigationStateNotifier.pages['keyword'] &&
                    locationState.isKeywordSearchSucceeded)
                  IconButtonView(onPressed: () => {}),
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
  void showCityDialog(BuildContext context, LocationState locationState,
      LocationStateNotifier locationNotifier) {
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext childContext) {
            return SucceedDialogView(
              // TODO: need feadback
              title: 'Found succcessfully',
              buttonText: 'Close',
              name: locationState.cityData.name,
              countryCode: locationState.cityData.countryCode,
              leftIcon: Image.asset(
                "assets/images/utils/streetview.png",
                width: 20,
              ),
              centerIcon:
                  Image.asset("assets/images/utils/googlemap.png", width: 20),
              rightIcon:
                  Image.asset("assets/images/utils/twitter.png", width: 20),
              leftOnPressed: () => UrlService.launchUrl(
                  locationState.cityExploreState.streetview),
              centerOnPressed: () => UrlService.launchUrl(
                  locationState.cityExploreState.googlemap),
              rightOnPressed: () =>
                  UrlService.launchUrl(locationState.cityExploreState.twitter),
              closeOnPressed: () {
                locationNotifier.switchCityDialog(false);
                Navigator.pop(context);
              },
            );
          });
    });
  }

  // Keyword search dialog
  void showKeywordSearchDialog(BuildContext context,
      LocationState locationState, LocationStateNotifier locationNotifier) {
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext childContext) {
            return SucceedDialogView(
              // TODO: need feadback
              title: 'Found succcessfully',
              buttonText: 'Close',
              name: locationState.keywordSearchData.name,
              leftIcon: Image.asset(
                "assets/images/utils/streetview.png",
                width: 20,
              ),
              centerIcon:
                  Image.asset("assets/images/utils/googlemap.png", width: 20),
              rightIcon:
                  Image.asset("assets/images/utils/twitter.png", width: 20),
              leftOnPressed: () => UrlService.launchUrl(
                  locationState.keywordSearchExploreState.streetview),
              centerOnPressed: () => UrlService.launchUrl(
                  locationState.keywordSearchExploreState.googlemap),
              rightOnPressed: () => UrlService.launchUrl(
                  locationState.keywordSearchExploreState.twitter),
              closeOnPressed: () {
                locationNotifier.switchKeywordSearchDialog(false);
                Navigator.pop(context);
              },
            );
          });
    });
  }
}
