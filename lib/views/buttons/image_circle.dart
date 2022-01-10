import '/import.dart';

class ImageCircle extends StatelessWidget {
  final Image image;
  final Color iconColor;

  const ImageCircle({Key? key, required this.image, required this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
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
