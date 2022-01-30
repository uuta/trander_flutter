import '/import.dart';
import '../location_error_dialog_view.dart';
import '/views/organisms/keyword_searches/keyword_search_text_field_view.dart';
import '/views/atoms/buttons/icon_button_view.dart';
import '/pages/keyword_searches/keyword_search_detail_page.dart';
import 'location_googlemap_view.dart';
import '/view_controllers/locations/location_dialog_view_controller.dart';
import '/views/organisms/keyword_searches/keyword_search_keywords_view.dart';

// It would be better to separate this file into 2 files for understainding easily.
// But, if it was implemented, unnecessary builds would run.
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
        await locationNotifier.switchPageLoading(true);
        await locationNotifier.initMapAction();
        await locationNotifier.getCurrentLocation();
        await locationNotifier.shiftCameraCurrentPosition();
        await locationNotifier.switchPageLoading(false);
      });
      return;
    }, const []);

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
        body: locationState.isPageLoading
            ? Center(
                child: CircularProgressIndicator(
                color: Theme.of(context).primaryColorLight,
              ))
            : Stack(children: [
                const LocationGooglemapView(),
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
                            ? const Text('')
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
                const KeywordSearchKeywordsView(),

                // Keyword info button
                if (navigationState.currentIndex ==
                        NavigationStateNotifier.pages['keyword'] &&
                    locationState.isKeywordSearchSucceeded)
                  IconButtonView(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const KeywordSearchDetailPage()))),
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
}
