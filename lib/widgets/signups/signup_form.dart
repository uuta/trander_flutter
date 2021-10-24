import '/import.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        children: const [
          SizedBox(
            height: 40,
          ),
          Icon(Icons.person_outlined),
          SizedBox(
            height: 13,
          ),
          Text(
            "Welcome Back!",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          )
        ],
      ),
    ));
  }
}
