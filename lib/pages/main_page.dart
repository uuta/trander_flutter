import '/import.dart';
import '/models/controllers/auth0/auth0_controller.dart';
import '/views/login_view.dart';
import '/views/profile_view.dart';

class MainPage extends HookConsumerWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth0State = ref.watch(auth0NotifierProvider);

    return Scaffold(
        appBar: AppBar(
            title: Image.asset("assets/images/icons/logo.png", width: 200),
            backgroundColor: Colors.white),
        body: auth0State.isBusy
            ? const CircularProgressIndicator()
            : auth0State.isLoggedIn
                ? const ProfileView()
                : const LoginView());
  }
}
