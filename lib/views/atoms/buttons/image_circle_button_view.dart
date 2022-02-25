import '/import.dart';

class ImageCircleButtonView extends StatelessWidget {
  final Widget image;
  final Color? iconColor;
  final VoidCallback? onPressed;

  const ImageCircleButtonView(
      {Key? key, required this.image, this.iconColor, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: image,
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(18),
        onPrimary: Theme.of(context).primaryColor,
        primary: iconColor ?? iconColor,
        elevation: 3,
      ),
    );
  }
}
