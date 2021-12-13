import '/import.dart';

class ScaffoldProgress extends StatelessWidget {
  const ScaffoldProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Image.asset("assets/images/icons/logo.png", width: 200),
            backgroundColor: Colors.white),
        body: const Center(child: CircularProgressIndicator()));
  }
}
