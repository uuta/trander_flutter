import '/import.dart';
import '/views/login_view.dart';

class MainPage extends HookConsumerWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth0State = ref.watch(auth0NotifierProvider);

    return Scaffold(
        appBar: AppBar(
          title: Image.asset("assets/images/icons/logo.png", width: 160),
        ),
        body: auth0State.isBusy
            ? CircularProgressIndicator(
                color: Theme.of(context).primaryColorLight,
              )
            : auth0State.isLoggedIn
                ? const IndexPage()
                : const LoginView());
  }
}
