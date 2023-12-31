import '/import.dart';
import '/views/molecules/dialogs/succeed_dialog_view.dart';

class LocationDialogViewController {
  // City dialog
  static void showCityDialog(BuildContext context, LocationState locationState,
      LocationStateNotifier locationNotifier) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final countryCode = locationState.cityData.countryCode;
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext childContext) {
            return SucceedDialogView(
              // TODO: need feadback
              title: 'Found succcessfully',
              buttonText: 'Close',
              name: locationState.cityData.name,
              image: Image.network('https://flagcdn.com/h20/$countryCode.png'),
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
  static void showKeywordSearchDialog(BuildContext context,
      LocationState locationState, LocationStateNotifier locationNotifier) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
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
