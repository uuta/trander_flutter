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
            await supabase.auth.signOut();
            PurchaseService.logout();
            if (context.mounted) {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const LoginPage()),
              );
            }
          },
          child: const Text('OK'),
        ),
      ],
    );
  }
}
