import '/import.dart';
import '/views/atoms/buttons/image_circle_button_view.dart';

class FourButtonView extends StatelessWidget {
  final Widget firstIcon, secondIcon, thirdIcon, fourthIcon;
  final Color? firstIconColor, secondIconColor, thirdIconColor, fourthIconColor;
  final Function()? firstOnPressed,
      secondOnPressed,
      thirdOnPressed,
      fourthOnPressed;
  const FourButtonView(
      {super.key,
      required this.firstIcon,
      required this.secondIcon,
      required this.thirdIcon,
      required this.fourthIcon,
      this.firstIconColor,
      this.secondIconColor,
      this.thirdIconColor,
      this.fourthIconColor,
      required this.firstOnPressed,
      required this.secondOnPressed,
      required this.thirdOnPressed,
      required this.fourthOnPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 270,
        child: Row(children: [
          const Spacer(),
          ImageCircleButtonView(
              image: firstIcon,
              iconColor: firstIconColor,
              onPressed: firstOnPressed),
          const Spacer(),
          ImageCircleButtonView(
              image: secondIcon,
              iconColor: secondIconColor,
              onPressed: secondOnPressed),
          const Spacer(),
          ImageCircleButtonView(
              image: thirdIcon,
              iconColor: thirdIconColor,
              onPressed: thirdOnPressed),
          const Spacer(),
          ImageCircleButtonView(
              image: fourthIcon,
              iconColor: fourthIconColor,
              onPressed: fourthOnPressed),
        ]));
  }
}
