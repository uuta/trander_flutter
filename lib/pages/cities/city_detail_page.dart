import '/import.dart';
import '/views/organisms/indexes/city_title_view.dart';
import '/views/atoms/buttons/fullsize_icon_text_button_view.dart';

class CityDetailPage extends HookConsumerWidget {
  const CityDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locationState = ref.watch(locationNotifierProvider);

    return Scaffold(
        appBar: AppBar(
          title: const CityTitleView(),
        ),
        body: Container(
            padding:
                const EdgeInsets.only(right: 10, left: 10, top: 20, bottom: 20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    'Explore it more',
                    style: HeaderStyles.header2(),
                  ),
                  const SizedBox(height: 20),
                  Row(children: <Widget>[
                    Expanded(
                        flex: 5,
                        child: SizedBox(
                            height: 45,
                            child: FractionallySizedBox(
                                widthFactor: 0.95,
                                child: FullsizeIconTextButtonView(
                                  icon: Image.asset(
                                      "assets/images/utils/streetview.png",
                                      width: 20),
                                  text: 'Street View',
                                  radius: 30.0,
                                  onPressed: () => UrlService.launchUrl(
                                      locationState
                                          .cityExploreState.streetview),
                                )))),
                    Expanded(
                        flex: 5,
                        child: SizedBox(
                            height: 45,
                            child: FractionallySizedBox(
                                widthFactor: 0.95,
                                child: FullsizeIconTextButtonView(
                                  icon: Image.asset(
                                      "assets/images/utils/googlemap.png",
                                      width: 20),
                                  text: 'Google Map',
                                  radius: 30.0,
                                  onPressed: () => UrlService.launchUrl(
                                      locationState.cityExploreState.googlemap),
                                ))))
                  ]),
                  const SizedBox(height: 15),
                  SizedBox(
                      height: 45,
                      child: FractionallySizedBox(
                          widthFactor: 0.95,
                          child: FullsizeIconTextButtonView(
                            icon: Image.asset("assets/images/utils/twitter.png",
                                width: 20),
                            text: 'Share on Twitter',
                            radius: 30.0,
                            onPressed: () => UrlService.launchUrl(
                                locationState.cityExploreState.twitter),
                          ))),
                  const SizedBox(height: 40),
                  Text(
                    'Details',
                    style: HeaderStyles.header2(),
                  ),
                  SettingsList(
                      backgroundColor: Colors.white,
                      shrinkWrap: true,
                      sections: [
                        SettingsSection(
                          titlePadding: const EdgeInsets.all(20),
                          tiles: [
                            SettingsTile(
                              title: 'Direction',
                              trailing: Text(locationState.cityData.direction),
                              leading: const Icon(Icons.explore),
                            ),
                            SettingsTile(
                              title: 'Distance',
                              trailing: Text(
                                  locationState.cityData.distance.toString() +
                                      ' km'),
                              leading: const Icon(Icons.map),
                            ),
                          ],
                        ),
                      ])
                ])));
  }
}
