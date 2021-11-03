import '/import.dart';

class PasswordResetsRequest extends StatelessWidget {
  const PasswordResetsRequest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/images/icons/logo.png", width: 200),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black54),
      ),
    );
  }
}
