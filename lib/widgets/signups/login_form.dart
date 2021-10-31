import '/import.dart';
import '/widgets/forms/icon_form.dart';
import '/widgets/buttons/icon_circle.dart';
import '/widgets/buttons/submit_button.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
          // child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  child: Image.asset('assets/images/stories/social.png'),
                  padding: const EdgeInsets.only(
                      top: 20, bottom: 30, left: 20, right: 20),
                ),
                IconForm(
                  label: "Email",
                  icon: Icons.email,
                  iconColor: Theme.of(context).primaryColor,
                  obscureText: false,
                ),
                const SizedBox(
                  height: 20,
                ),
                IconForm(
                  label: "Password",
                  icon: Icons.lock,
                  iconColor: Theme.of(context).primaryColor,
                  obscureText: true,
                ),
                const SizedBox(
                  height: 40,
                ),
                const SizedBox(
                    height: 55,
                    width: double.infinity,
                    child: Padding(
                        padding: EdgeInsets.only(left: 30, right: 30),
                        child: SubmitButton(text: "Login"))),
                const SizedBox(
                  height: 40,
                ),
                const Text("Or Login with",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                const SizedBox(
                  height: 20,
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconCircle(
                          icon: FontAwesomeIcons.google,
                          iconColor: Theme.of(context).primaryColor)
                    ]),
              ],
            ),
            // ),
          )),
    );
  }
}
