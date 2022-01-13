import '/import.dart';
import '/pages/settings/setting_range_page.dart';
import '/views/settings/setting_dialog_view.dart';
import '/views/settings/setting_direction_dialog_view.dart';

class SettingView extends HookConsumerWidget {
  const SettingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth0State = ref.watch(auth0NotifierProvider);
    final locationState = ref.watch(locationNotifierProvider);

    final List _currentRange = <int>[
      locationState.settingData.minDistance,
      locationState.settingData.maxDistance
    ];

    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
            child: SettingsList(
                backgroundColor: Colors.white,
                shrinkWrap: true,
                sections: [
              SettingsSection(
                titlePadding: const EdgeInsets.all(20),
                title: 'Location',
                titleTextStyle: Theme.of(context).textTheme.headline6,
                tiles: [
                  SettingsTile(
                    title: 'Direction',
                    subtitle: ConstsSetting.directionType.entries
                        .toList()
                        .where((e) =>
                            e.value == locationState.settingData.directionType)
                        .toList()[0]
                        .key,
                    trailing: const Icon(Icons.navigate_next),
                    leading: const Icon(Icons.location_on),
                    onPressed: (BuildContext context) {
                      showDialog<String>(
                          context: context,
                          builder: (BuildContext context) =>
                              const SettingDirectionDialogView());
                    },
                  ),
                  SettingsTile(
                    title: 'Range',
                    subtitle: '${_currentRange[0]}km - ${_currentRange[1]}km',
                    trailing: const Icon(Icons.navigate_next),
                    leading: const Icon(Icons.ramen_dining),
                    onPressed: (BuildContext context) {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const SettingRangePage()));
                    },
                  ),
                ],
              ),
              SettingsSection(
                titlePadding: const EdgeInsets.all(20),
                title: 'Account',
                titleTextStyle: Theme.of(context).textTheme.headline6,
                tiles: [
                  SettingsTile(
                    title: 'Name',
                    subtitle: auth0State.data!['name'],
                    leading: const Icon(Icons.person),
                    onPressed: (BuildContext context) {},
                  ),
                  SettingsTile(
                    title: 'Email',
                    subtitle: auth0State.data!['email'],
                    leading: const Icon(Icons.email),
                    onPressed: (BuildContext context) {},
                  ),
                  SettingsTile(
                    title: 'Plan',
                    subtitle: 'Free',
                    trailing: const Icon(Icons.navigate_next),
                    leading: const Icon(Icons.price_change),
                    onPressed: (BuildContext context) {},
                  ),
                ],
              ),
              SettingsSection(
                titlePadding: const EdgeInsets.all(20),
                title: 'Logout',
                titleTextStyle: Theme.of(context).textTheme.headline6,
                tiles: [
                  SettingsTile(
                    title: 'Logout',
                    leading: const Icon(Icons.logout),
                    onPressed: (BuildContext context) {
                      showDialog<String>(
                          context: context,
                          builder: (BuildContext context) =>
                              const SettingDialogView());
                    },
                  ),
                ],
              )
            ])),
      ],
    ));
  }
}
