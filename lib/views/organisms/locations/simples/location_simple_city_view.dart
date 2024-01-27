import '/import.dart';
import '/view_controllers/locations/location_dialog_view_controller.dart';
import '/view_controllers/purchases/puchase_dialog_view_controller.dart';
import '/views/molecules/columns/three_text_column_view.dart';
import 'location_simple_city_buttons_view.dart';
import '/views/molecules/columns/title_caption_view.dart';
import '/views/molecules/dialogs/error_dialog_view.dart';
import '/views/organisms/indexes/switch_toggle_view.dart';

class LocationSimpleCityView extends HookConsumerWidget {
  const LocationSimpleCityView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final supabaseState = ref.watch(supabaseNotifierProvider);
    final locationState = ref.watch(locationNotifierProvider);
    final locationNotifier = ref.watch(locationNotifierProvider.notifier);

    // City dialog
    if (locationState.isCityDialog) {
      LocationDialogViewController.showCityDialog(
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
                ])),
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
                            : const TitleCaptionView(
                                title: 'Push it',
                                caption: 'Find a City randomly',
                              )),
                Positioned(
                    top: 100.0,
                    left: 30.0,
                    right: 30.0,
                    bottom: 100.0,
                    child: locationState.errorMessage == ''
                        ? const Text('')
                        : ErrorDialogView(
                            errorMessage: locationState.errorMessage.toString(),
                            onPressed: () => locationNotifier.offErrorMessage(),
                          )),
                if (locationState.isCitySucceeded && !(locationState.isLoading))
                  const LocationSimpleCityButtonsView()
              ],
            )), // Button
        floatingActionButton: FloatingActionButton(
            onPressed: () async {
              await locationNotifier.getSimpleCity(supabaseState.accessToken);
            },
            child: const Icon(Icons.location_searching)));
  }
}
