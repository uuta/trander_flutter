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
                    'More Exploration',
                    style: Theme.of(context).textTheme.displaySmall,
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
                        locationState.keywordSearchExploreState.googlemap),
                    bottomIcon: Image.asset("assets/images/utils/twitter.png",
                        width: 20),
                    bottomText: 'Share on Twitter',
                    bottomOnPressed: () => UrlService.launchUrl(
                        locationState.keywordSearchExploreState.twitter),
                  ),
                  const SizedBox(height: 40),
                  Text(
                    'Details',
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  const SizedBox(height: 20),
                  SettingsList(
                      lightTheme: const SettingsThemeData(
                          settingsListBackground: Colors.white),
                      darkTheme: SettingsThemeData(
                          settingsListBackground: Colors.grey[900]),
                      shrinkWrap: true,
                      sections: [
                        SettingsSection(
                          margin: const EdgeInsetsDirectional.all(20),
                          tiles: [
                            SettingsTile(
                              title: const Text('Rating'),
                              trailing: Text(
                                locationState.keywordSearchData.rating
                                        .toString() +
                                    ' (${locationState.keywordSearchData.userRatingsTotal})',
                              ),
                              leading: const Icon(Icons.star_rate),
                            ),
                            SettingsTile(
                              title: const Text('Address'),
                              description: Text(
                                  locationState.keywordSearchData.vicinity ??
                                      ''),
                              leading: const Icon(Icons.push_pin),
                            ),
                            SettingsTile(
                              title: const Text('Direction'),
                              trailing: Text(
                                  locationState.keywordSearchData.direction),
                              leading: const Icon(Icons.explore),
                            ),
                            SettingsTile(
                              title: const Text('Distance'),
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
