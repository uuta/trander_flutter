import '/import.dart';

// TODO: Unused in the current
class SettingProfileView extends HookConsumerWidget {
  const SettingProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth0State = ref.watch(auth0NotifierProvider);
    final auth0Notifier = ref.read(auth0NotifierProvider.notifier);

    return Column(children: [
      Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue, width: 4),
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(auth0State.data.picture ?? ''),
          ),
        ),
      ),
      const SizedBox(height: 24),
      Text('Name: ' + (auth0State.data.name ?? '')),
      const SizedBox(height: 48),
      ElevatedButton(
        onPressed: () async {
          auth0Notifier.logout();
        },
        child: const Text('Logout'),
      ),
    ]);
  }
}
