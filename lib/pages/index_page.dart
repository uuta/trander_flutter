import '/import.dart';
// views
import '/views/bottom_bars/three_bottom_bar.dart';
import '../views/settings/setting_view.dart';
import '../views/locations/location_view.dart';

class IndexPage extends HookConsumerWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navigationState = ref.watch(navigationNotifierProvider);

    // Post request when leaving the settings page

    const List<Widget> _pageList = [
      LocationView(),
      LocationView(),
      SettingView(),
    ];

    return Scaffold(
        appBar: AppBar(
            title: Image.asset("assets/images/icons/logo.png", width: 160),
            backgroundColor: Colors.white),
        body: _pageList[navigationState.currentIndex],
        bottomNavigationBar: const ThreeBottomBar());
  }
}
