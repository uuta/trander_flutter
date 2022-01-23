import '/import.dart';
import '/views/organisms/locations/location_error_dialog_view.dart';
import '/view_controllers/locations/location_dialog_view_controller.dart';
import '/views/molecules/columns/three_text_column_view.dart';
import '/views/organisms/locations/simples/location_simple_buttons_view.dart';

class LocationSimpleCityView extends HookConsumerWidget {
  const LocationSimpleCityView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth0State = ref.watch(auth0NotifierProvider);
    final locationState = ref.watch(locationNotifierProvider);
    final locationNotifier = ref.watch(locationNotifierProvider.notifier);
    final navigationState = ref.watch(navigationNotifierProvider);

    // City dialog
    if (locationState.isCityDialog) {
      LocationDialogViewController.showCityDialog(
          context, locationState, locationNotifier);
    }

    // Keyword search dialog
    if (locationState.isKeywordSearchDialog) {
      LocationDialogViewController.showKeywordSearchDialog(
          context, locationState, locationNotifier);
    }

    return Scaffold(
        body: Stack(
          children: [
            Center(
                child: locationState.isLoading
                    ? Center(
                        child: CircularProgressIndicator(
                        color: Theme.of(context).primaryColorLight,
                      ))
                    : locationState.isCitySucceeded
                        ? ThreeTextColumnView(
                            name: locationState.cityData.name,
                            countryCode: locationState.cityData.countryCode,
                          )
                        : Text(
                            'Find a City randomly',
                            style: Theme.of(context).textTheme.headline2,
                          )),
            Positioned(
                top: 100.0,
                left: 30.0,
                right: 30.0,
                bottom: 100.0,
                child: locationState.errorMessage == ''
                    ? const Text('')
                    : const LocationErrorDialogView()),
            if (locationState.isCitySucceeded && !(locationState.isLoading))
              const LocationSimpleButtonsView()
          ],
        ), // Button
        floatingActionButton: FloatingActionButton(
            onPressed: () async {
              navigationState.currentIndex ==
                      NavigationStateNotifier.pages['city']
                  ? locationNotifier.getSimpleCity(auth0State.idToken)
                  : locationNotifier.getSimpleKeywordSearch(auth0State.idToken);
            },
            child: const Icon(Icons.location_searching)));
  }
}
