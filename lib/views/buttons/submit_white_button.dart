import '/import.dart';

class SubmitWhiteButton extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  final double? fontSize;

  const SubmitWhiteButton(
      {Key? key, required this.text, this.onPressed, this.fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: Theme.of(context).primaryColorLight,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          elevation: 16,
        ),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ));
  }
}
