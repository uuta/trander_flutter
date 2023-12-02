import '/import.dart';

class FullsizeIconTextButtonView extends HookConsumerWidget {
  final Widget icon;
  final String text;
  final double radius;
  final VoidCallback? onPressed;
  const FullsizeIconTextButtonView(
      {super.key,
      required this.text,
      required this.icon,
      this.radius = 20.0,
      this.onPressed});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
        child: ElevatedButton.icon(
            icon: icon,
            label: Text(
              text,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius),
              ),
              padding:
                  const EdgeInsets.only(top: 7, bottom: 7, left: 10, right: 20),
            )));
  }
}
