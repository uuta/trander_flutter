import '/import.dart';

class ElevatedTextButtonView extends StatelessWidget {
  final String text;
  final Color? onPrimary;
  final double? height, width;
  final VoidCallback onPressed;
  const ElevatedTextButtonView(
      {Key? key,
      required this.text,
      this.onPrimary,
      required this.onPressed,
      this.height,
      this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: height,
        width: width,
        child: ElevatedButton(
          child: Text(text),
          style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(),
              onPrimary: onPrimary ?? Theme.of(context).primaryColor),
          onPressed: onPressed,
        ));
  }
}
