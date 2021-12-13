import '/import.dart';
import '/models/controllers/navigation/navigation_controller.dart';

class ThreeBottomBar extends HookConsumerWidget {
  const ThreeBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navigationState = ref.watch(navigationNotifierProvider);

    return Container(
        decoration: const BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 30,
            spreadRadius: 5,
          ),
        ]),
        child: BottomNavigationBar(
          currentIndex: navigationState.selectedIndex,
          onTap: (index) {
            ref.read(navigationNotifierProvider.notifier).current(index);
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
