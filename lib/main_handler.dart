import '/import.dart';
import 'package:supabase_flutter/supabase_flutter.dart' as sb;

// Navigator.of(context) should be used in MaterialApp()
class MainHandler extends HookConsumerWidget {
  const MainHandler({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final supabaseNotifier = ref.watch(supabaseNotifierProvider.notifier);
    useEffect(() {
      Future.microtask(() async {
        supabaseNotifier.load();
        // Watch the auth state
        supabase.auth.onAuthStateChange.listen((state) {
          if (state.event == sb.AuthChangeEvent.signedIn) {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const IndexPage(),
              ),
            );
          }
        });
      });
      return;
    }, []);

    return const Scaffold(
      body: OnBoardingPage(),
    );
  }
}
