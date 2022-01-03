import '/import.dart';

class ThreeBottomBar extends HookConsumerWidget {
  const ThreeBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth0State = ref.watch(auth0NotifierProvider);
    final navigationState = ref.watch(navigationNotifierProvider);
    final navigationNotifier = ref.watch(navigationNotifierProvider.notifier);
    final locationNotifier = ref.watch(locationNotifierProvider.notifier);

    return Container(
        decoration: const BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 30,
            spreadRadius: 5,
          ),
        ]),
        child: BottomNavigationBar(
          currentIndex: navigationState.currentIndex,
          onTap: (index) async {
            final NavigationState indexes =
                await navigationNotifier.changeIndex(index);
            await locationNotifier.postSetting(auth0State.idToken, indexes);
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.location_searching),
              label: 'City',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Keyword',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
          selectedItemColor: Theme.of(context).primaryColorLight,
          // elevation: 30,
        ));
  }
}
