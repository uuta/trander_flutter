import '/import.dart';

class FullsizeIconTextButton extends HookConsumerWidget {
  final Widget icon;
  final String text;
  final double radius;
  final VoidCallback? onPressed;
  const FullsizeIconTextButton(
      {Key? key,
      required this.text,
      required this.icon,
      this.radius = 20.0,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
        child: ElevatedButton.icon(
            icon: icon,
            label: Text(
              text,
              style: HeaderStyles.header4(),
            ),
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius),
              ),
              primary: Colors.white,
              padding:
                  const EdgeInsets.only(top: 7, bottom: 7, left: 10, right: 20),
            )));
  }
}
