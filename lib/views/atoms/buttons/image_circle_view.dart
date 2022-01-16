import '/import.dart';

class ImageCircleView extends StatelessWidget {
  final Image image;
  final Color iconColor;
  final VoidCallback? onPressed;

  const ImageCircleView(
      {Key? key, required this.image, required this.iconColor, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: image,
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(20),
        primary: Colors.white,
        onPrimary: Colors.black38,
        elevation: 3,
      ),
    );
  }
}
