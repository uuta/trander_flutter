import '/import.dart';

class SubmitButtonView extends StatelessWidget {
  final String text;
  final Function()? onPressed;

  const SubmitButtonView({Key? key, required this.text, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(300, 50),
          maximumSize: const Size(300, 50),
          backgroundColor: Theme.of(context).primaryColorLight,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          elevation: 16,
        ),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ));
  }
}
