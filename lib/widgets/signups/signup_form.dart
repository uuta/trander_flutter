import 'package:flutter/rendering.dart';
import '/import.dart';
import '/widgets/forms/icon_form.dart';

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
                SizedBox(
                    height: 55,
                    width: double.infinity,
                    child: Padding(
                        padding: const EdgeInsets.all(0),
                        child: TextButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: Theme.of(context).primaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              elevation: 16,
                            ),
                            child: const Text(
                              "Get Started",
                              style: TextStyle(color: Colors.white),
                            )))),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("aaaaaaaa") //your elements here
                    ]),
              ],
            ),
            // ),
          )),
    );
  }
}
