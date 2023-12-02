import '/import.dart';

class ImageCircleButtonView extends StatelessWidget {
  final Widget image;
  final Color? iconColor;
  final VoidCallback? onPressed;

  const ImageCircleButtonView(
      {super.key, required this.image, this.iconColor, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(18),
        foregroundColor: Theme.of(context).primaryColor,
        backgroundColor: iconColor ?? iconColor,
        elevation: 3,
      ),
      child: image,
    );
  }
}
