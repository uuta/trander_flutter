import '/import.dart';
import '/views/buttons/submit_white_button.dart';
import '/models/controllers/auth0/auth0_controller.dart';

class LoginView extends HookConsumerWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/icons/brand.png'),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Get started',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor),
            ),
            const SizedBox(height: 50),
            SizedBox(
              height: 50,
              width: 250,
              child: SubmitWhiteButton(
                text: 'Login',
                onPressed: () {
                  ref.read(auth0NotifierProvider.notifier).login();
                },
              ),
            ),
          ],
        )));
  }
}
