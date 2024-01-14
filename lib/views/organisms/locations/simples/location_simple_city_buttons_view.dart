import '/import.dart';
import '/views/molecules/buttons/four_button_view.dart';

class LocationSimpleCityButtonsView extends HookConsumerWidget {
  const LocationSimpleCityButtonsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locationState = ref.watch(locationNotifierProvider);

    return Positioned(
      bottom: 18,
      child: FourButtonView(
          firstIcon:
              Image.asset("assets/images/utils/streetview.png", width: 20),
          secondIcon:
              Image.asset("assets/images/utils/googlemap.png", width: 20),
          thirdIcon: Image.asset("assets/images/utils/twitter.png", width: 20),
          fourthIcon: const Icon(
            Icons.info_outline,
            size: 22.0,
          ),
          firstOnPressed: () =>
              UrlService.openUrl(locationState.cityExploreState.streetview),
          secondOnPressed: () =>
              UrlService.openUrl(locationState.cityExploreState.googlemap),
          thirdOnPressed: () =>
              UrlService.openUrl(locationState.cityExploreState.twitter),
          fourthOnPressed: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => const CityDetailPage()))),
    );
  }
}
