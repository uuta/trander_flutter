import '/import.dart';
import '/models/controllers/auth0/auth0_controller.dart';
import '/widgets/login_widget.dart';
import '../widgets/profile_widget.dart';

class MainPage extends HookConsumerWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth0State = ref.watch(auth0NotifierProvider);

    return auth0State.isBusy
        ? const CircularProgressIndicator()
        : auth0State.isLoggedIn
            ? const ProfileWidget()
            : const LoginWidget();
  }
}
