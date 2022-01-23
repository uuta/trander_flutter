import '/import.dart';
import '/views/molecules/buttons/mixed_three_button_view.dart';
import '/views/organisms/keyword_searches/keyword_search_title_view.dart';

class KeywordSearchDetailPage extends HookConsumerWidget {
  const KeywordSearchDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locationState = ref.watch(locationNotifierProvider);

    return Scaffold(
        appBar: AppBar(
          title: const KeywordSearchTitleView(),
        ),
        body: Container(
            padding:
                const EdgeInsets.only(right: 10, left: 10, top: 20, bottom: 20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    'Explore it more',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  const SizedBox(height: 20),
                  MixedThreeButton(
                    leftIcon: Image.asset("assets/images/utils/streetview.png",
                        width: 20),
                    leftText: 'Street View',
                    leftOnPressed: () => UrlService.launchUrl(
                        locationState.keywordSearchExploreState.streetview),
                    rightIcon: Image.asset("assets/images/utils/googlemap.png",
                        width: 20),
                    rightText: 'Google Map',
                    rightOnPressed: () => UrlService.launchUrl(
                        locationState.keywordSearchExploreState.streetview),
                    bottomIcon: Image.asset("assets/images/utils/twitter.png",
                        width: 20),
                    bottomText: 'Share on Twitter',
                    bottomOnPressed: () => UrlService.launchUrl(
                        locationState.keywordSearchExploreState.twitter),
                  ),
                  const SizedBox(height: 40),
                  Text(
                    'Details',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  SettingsList(
                      backgroundColor: Colors.white,
                      shrinkWrap: true,
                      sections: [
                        SettingsSection(
                          titlePadding: const EdgeInsets.all(20),
                          tiles: [
                            SettingsTile(
                              title: 'Rating',
                              trailing: Text(locationState
                                      .keywordSearchData.rating
                                      .toString() +
                                  ' (${locationState.keywordSearchData.userRatingsTotal})'),
                              leading: const Icon(Icons.star),
                            ),
                            SettingsTile(
                              title: 'Direction',
                              trailing: Text(
                                  locationState.keywordSearchData.direction),
                              leading: const Icon(Icons.explore),
                            ),
                            SettingsTile(
                              title: 'Distance',
                              trailing: Text(locationState
                                      .keywordSearchData.distance
                                      .toString() +
                                  ' km'),
                              leading: const Icon(Icons.map),
                            ),
                          ],
                        ),
                      ])
                ])));
  }
}
