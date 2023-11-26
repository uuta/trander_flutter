import '/import.dart';

class SubmitWhiteButtonView extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  final double? fontSize;

  const SubmitWhiteButtonView(
      {Key? key, required this.text, this.onPressed, this.fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).primaryColorLight,
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
