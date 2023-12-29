import '/import.dart';

class LoginPage extends HookConsumerWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final supabaseNotifier = ref.watch(supabaseNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: supabaseNotifier.googleSignIn,
          child: const Text('Google login'),
        ),
      ),
    );
  }
}
