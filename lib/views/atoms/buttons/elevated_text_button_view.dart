import '/import.dart';

class ElevatedTextButtonView extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const ElevatedTextButtonView(
      {Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(text),
      style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          onPrimary: Theme.of(context).primaryColor),
      onPressed: onPressed,
    );
  }
}
