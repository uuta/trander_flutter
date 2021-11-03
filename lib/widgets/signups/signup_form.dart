import 'package:flutter/rendering.dart';
import '/import.dart';
import '/widgets/forms/icon_form.dart';
import '/widgets/buttons/submit_button.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(20),
          // child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  child: Image.asset('assets/images/stories/walking.png'),
                  padding: const EdgeInsets.only(
                      top: 20, bottom: 30, left: 20, right: 20),
                ),
                const SizedBox(height: 20),
                IconForm(
                  label: "Name",
                  icon: Icons.person_rounded,
                  iconColor: Theme.of(context).primaryColor,
                  obscureText: false,
                ),
                const SizedBox(
                  height: 20,
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
                        child: SubmitButton(text: "Get Started"))),
              ],
            ),
            // ),
          )),
    );
  }
}
