import '/views/organisms/indexes/city_title_view.dart';

import '/import.dart';
// views
import '/views/organisms/bottom_bars/three_bottom_bar_view.dart';
import '/views/organisms/settings/setting_view.dart';
import '../../views/organisms/locations/googlemaps/location_view.dart';
import '/views/organisms/keyword_searches/keyword_search_title_view.dart';
import '/views/organisms/locations/simples/location_simple_city_view.dart';
import '/views/organisms/locations/simples/location_simple_keyword_search_view.dart';

class IndexPage extends HookConsumerWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navigationState = ref.watch(navigationNotifierProvider);
    final locationState = ref.watch(locationNotifierProvider);

    final List<Widget> _pageList = [
      locationState.settingMode == 0
          ? const LocationSimpleCityView()
          : const LocationView(),
      locationState.settingMode == 0
          ? const LocationSimpleKeywordSearchView()
          : const LocationView(),
      const SettingView(),
    ];

    // Title: flexible change
    List<Widget> _titleList = [
      locationState.isCitySucceeded
          ? const CityTitleView()
          : Text(
              'City Search',
              style: Theme.of(context).textTheme.headline2,
            ),
      locationState.isKeywordSearchSucceeded
          ? const KeywordSearchTitleView()
          : Text(
              'Keyword Search',
              style: Theme.of(context).textTheme.headline2,
            ),
      Text(
        'Settings',
        style: Theme.of(context).textTheme.headline2,
      ),
    ];

    return Scaffold(
        appBar: AppBar(title: _titleList[navigationState.currentIndex]),
        body: _pageList[navigationState.currentIndex],
        bottomNavigationBar: const ThreeBottomBarView());
  }
}
