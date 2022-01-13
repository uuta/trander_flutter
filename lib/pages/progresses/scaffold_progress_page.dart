import '/import.dart';

class ScaffoldProgressPage extends StatelessWidget {
  const ScaffoldProgressPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Image.asset("assets/images/icons/logo.png", width: 160),
        ),
        body: const Center(child: CircularProgressIndicator()));
  }
}
