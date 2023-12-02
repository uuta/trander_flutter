import '/import.dart';
import '/views/atoms/buttons/fullsize_icon_text_button_view.dart';

class MixedThreeButton extends StatelessWidget {
  final Widget leftIcon, rightIcon, bottomIcon;
  final String leftText, rightText, bottomText;
  final VoidCallback leftOnPressed, rightOnPressed, bottomOnPressed;
  const MixedThreeButton(
      {super.key,
      required this.leftIcon,
      required this.rightIcon,
      required this.bottomIcon,
      required this.leftText,
      required this.rightText,
      required this.bottomText,
      required this.leftOnPressed,
      required this.rightOnPressed,
      required this.bottomOnPressed});

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Row(children: <Widget>[
        Expanded(
            flex: 5,
            child: SizedBox(
                height: 45,
                child: FractionallySizedBox(
                    widthFactor: 0.95,
                    child: FullsizeIconTextButtonView(
                        icon: leftIcon,
                        text: leftText,
                        radius: 30.0,
                        onPressed: leftOnPressed)))),
        Expanded(
            flex: 5,
            child: SizedBox(
                height: 45,
                child: FractionallySizedBox(
                    widthFactor: 0.95,
                    child: FullsizeIconTextButtonView(
                        icon: rightIcon,
                        text: rightText,
                        radius: 30.0,
                        onPressed: rightOnPressed))))
      ]),
      const SizedBox(height: 15),
      SizedBox(
          height: 45,
          child: FractionallySizedBox(
              widthFactor: 0.95,
              child: FullsizeIconTextButtonView(
                  icon: bottomIcon,
                  text: bottomText,
                  radius: 30.0,
                  onPressed: bottomOnPressed))),
    ]);
  }
}
