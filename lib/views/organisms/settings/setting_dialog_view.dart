import '/import.dart';

class SettingDialogView extends HookConsumerWidget {
  const SettingDialogView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth0Notifier = ref.watch(auth0NotifierProvider.notifier);

    return AlertDialog(
      title: const Text('Logout'),
      titleTextStyle: Theme.of(context).textTheme.displaySmall,
      content: const Text('Are you sure you want to logout?'),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, 'Cancel'),
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            auth0Notifier.logout();
            PurchaseService.logout();
            Navigator.pop(context, 'OK');
          },
          child: const Text('OK'),
        ),
      ],
    );
  }
}
