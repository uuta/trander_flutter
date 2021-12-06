import '/import.dart';
import '/models/controllers/auth0/auth0_controller.dart';

class ProfileWidget extends HookConsumerWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth0State = ref.watch(auth0NotifierProvider);

    return Column(
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
    );
  }
}
