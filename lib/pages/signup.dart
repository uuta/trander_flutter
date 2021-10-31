import '/import.dart';
import '/widgets/signups/signup_form.dart';
import '/widgets/signups/login_form.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
                bottom: TabBar(
                    tabs: const [
                      Text("Sign up"),
                      Text("Login"),
                    ],
                    indicatorColor: Theme.of(context).primaryColor,
                    indicatorWeight: 5.0,
                    labelColor: Theme.of(context).primaryColor,
                    labelStyle: HeaderStyles.header1(
                        color: Theme.of(context).primaryColor),
                    unselectedLabelColor: Theme.of(context).disabledColor,
                    unselectedLabelStyle: HeaderStyles.header1(
                        color: Theme.of(context).disabledColor),
                    labelPadding: const EdgeInsets.only(bottom: 10)),
                title: Image.asset("assets/images/icons/logo.png", width: 200),
                backgroundColor: Colors.white),
            body: const TabBarView(
              children: [
                // Signup
                SignupForm(),
                // Login
                LoginForm(),
              ],
            )));
  }
}
