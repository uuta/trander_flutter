import '/import.dart';
import '/models/controllers/auth0/auth0_controller.dart';
import '/views/bottom_bars/three_bottom_bar.dart';

class IndexView extends HookConsumerWidget {
  const IndexView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth0State = ref.watch(auth0NotifierProvider);

    return Scaffold(
        appBar: AppBar(
            title: Image.asset("assets/images/icons/logo.png", width: 200),
            backgroundColor: Colors.white),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue, width: 4),
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(auth0State.data!['picture'] ?? ''),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Text('Name: ' + auth0State.data!['name']),
            const SizedBox(height: 48),
            ElevatedButton(
              onPressed: () async {
                ref.read(auth0NotifierProvider.notifier).logout();
              },
              child: const Text('Logout'),
            ),
          ],
        )),
        bottomNavigationBar: const ThreeBottomBar());
  }
}
