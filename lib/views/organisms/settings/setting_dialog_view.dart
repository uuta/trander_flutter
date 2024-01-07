import '/import.dart';

class SettingDialogView extends HookConsumerWidget {
  const SettingDialogView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
          onPressed: () async {
            if (context.mounted) {
              Navigator.pop(context, 'OK');
            }
            await supabase.auth.signOut();
            await googleSignIn.signOut();
            PurchaseService.logout();
          },
          child: const Text('OK'),
        ),
      ],
    );
  }
}
