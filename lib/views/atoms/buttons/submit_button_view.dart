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
          primary: Theme.of(context).primaryColor,
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
