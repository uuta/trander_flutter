import 'package:trander/view_controllers/purchases/puchase_dialog_view_controller.dart';

import '/import.dart';
import '/view_controllers/locations/location_dialog_view_controller.dart';
import '/views/molecules/columns/three_text_column_view.dart';
import '/views/organisms/keyword_searches/keyword_search_text_field_view.dart';
import '/views/organisms/locations/simples/location_simple_keyword_buttons_view.dart';
import '/views/molecules/columns/title_caption_view.dart';
import '/views/organisms/keyword_searches/keyword_search_keywords_view.dart';
import '/views/molecules/dialogs/error_dialog_view.dart';
import '/views/organisms/indexes/switch_toggle_view.dart';

class LocationSimpleKeywordSearchView extends HookConsumerWidget {
  const LocationSimpleKeywordSearchView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final supabaseState = ref.watch(supabaseNotifierProvider);
    final locationState = ref.watch(locationNotifierProvider);
    final locationNotifier = ref.watch(locationNotifierProvider.notifier);

    // Keyword search dialog
    if (locationState.isKeywordSearchDialog) {
      LocationDialogViewController.showKeywordSearchDialog(
          context, locationState, locationNotifier);
    }

    // Purchase dialog
    if (locationState.purchaseDialog) {
      PurchaseDialogViewController.showPurchaseDialog(
          context, locationState, locationNotifier);
    }

    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Stack(
              children: [
                Center(
                    child: Column(children: const [
                  SizedBox(height: 20),

                  // switch toggle
                  SwitchToggleView(),
                  SizedBox(height: 20),

                  // Keyword text field
                  KeywordSearchTextFieldView(),
                  SizedBox(height: 5),

                  // Keywords
                  KeywordSearchKeywordsView(),
                ])),

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
                                countryCode:
                                    locationState.keywordSearchData.countryCode,
                              )
                            : const TitleCaptionView(
                                title: 'Enter a keyword',
                                caption: 'Find a Location randomly',
                              )),

                // Error dialog
                if (locationState.errorMessage != '')
                  Positioned(
                      top: 100.0,
                      left: 30.0,
                      right: 30.0,
                      bottom: 100.0,
                      child: ErrorDialogView(
                        errorMessage: locationState.errorMessage.toString(),
                        onPressed: () => locationNotifier.offErrorMessage(),
                      )),

                // Info buttons
                if (locationState.isKeywordSearchSucceeded &&
                    !(locationState.isLoading))
                  const LocationSimpleKeywordButtonsView()
              ],
            )), // Button
        floatingActionButton: FloatingActionButton(
            onPressed: () async {
              if (locationState.locationType == LocationType.backpacker) {
                locationNotifier.getBackpacker(supabaseState.accessToken);
                return;
              }
              locationNotifier
                  .getSimpleKeywordSearch(supabaseState.accessToken);
            },
            child: const Icon(Icons.location_searching)));
  }
}
