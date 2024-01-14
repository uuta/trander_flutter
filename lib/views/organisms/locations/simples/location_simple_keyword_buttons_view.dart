import '/import.dart';
import '/views/molecules/buttons/four_button_view.dart';

class LocationSimpleKeywordButtonsView extends HookConsumerWidget {
  const LocationSimpleKeywordButtonsView({Key? key}) : super(key: key);

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
          firstOnPressed: () => UrlService.openUrl(
              locationState.keywordSearchExploreState.streetview),
          secondOnPressed: () => UrlService.openUrl(
              locationState.keywordSearchExploreState.googlemap),
          thirdOnPressed: () => UrlService.openUrl(
              locationState.keywordSearchExploreState.twitter),
          fourthOnPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const KeywordSearchDetailPage()))),
    );
  }
}
