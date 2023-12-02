import '/import.dart';

class ShadowIconTextView extends StatelessWidget {
  final String name;
  final TextStyle? textStyle;
  final Widget? icon;
  final int shortenStr;
  final MainAxisAlignment mainAxisAlignment;
  const ShadowIconTextView(
      {super.key,
      this.name = '',
      this.textStyle,
      this.icon,
      this.shortenStr = 0,
      this.mainAxisAlignment = MainAxisAlignment.center});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 13),
          child: Material(elevation: 3, child: icon),
        ),
        Flexible(
            child: Text(
          (shortenStr != 0)
              ? UtilService.shortenStr(name, max: shortenStr)
              : name,
          style: textStyle ?? Theme.of(context).textTheme.headlineSmall,
        )),
      ],
    );
  }
}
