import '/import.dart';
import '/views/organisms/locations/location_error_dialog_view.dart';
import '/view_controllers/locations/location_dialog_view_controller.dart';
import '/views/molecules/columns/three_text_column_view.dart';
import '/views/organisms/keyword_searches/keyword_search_text_field_view.dart';
import '/views/organisms/locations/simples/location_simple_keyword_buttons_view.dart';
import '/views/molecules/columns/title_caption_view.dart';
import '/views/organisms/keyword_searches/keyword_search_keywords_view.dart';

class LocationSimpleKeywordSearchView extends HookConsumerWidget {
  const LocationSimpleKeywordSearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth0State = ref.watch(auth0NotifierProvider);
    final locationState = ref.watch(locationNotifierProvider);
    final locationNotifier = ref.watch(locationNotifierProvider.notifier);

    // Keyword search dialog
    if (locationState.isKeywordSearchDialog) {
      LocationDialogViewController.showKeywordSearchDialog(
          context, locationState, locationNotifier);
    }

    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Stack(
              children: [
                // Keyword text field
                const KeywordSearchTextFieldView(),

                // Keywords
                const KeywordSearchKeywordsView(),

                // Main content
                Center(
                    child: locationState.isLoading
                        ? Center(
                            child: CircularProgressIndicator(
                            color: Theme.of(context).primaryColorLight,
                          ))
                        : locationState.isKeywordSearchSucceeded
                            ? ThreeTextColumnView(
                                name: locationState.keywordSearchData.name,
                              )
                            : const TitleCaptionView(
                                title: 'Input keyword',
                                caption: 'Find a Location randomly',
                              )),

                // Error dialog
                if (locationState.errorMessage != '')
                  const Positioned(
                      top: 100.0,
                      left: 30.0,
                      right: 30.0,
                      bottom: 100.0,
                      child: LocationErrorDialogView()),

                // Info buttons
                if (locationState.isKeywordSearchSucceeded &&
                    !(locationState.isLoading))
                  const LocationSimpleKeywordButtonsView()
              ],
            )), // Button
        floatingActionButton: FloatingActionButton(
            onPressed: () async {
              locationNotifier.getSimpleKeywordSearch(auth0State.idToken);
            },
            child: const Icon(Icons.location_searching)));
  }
}
