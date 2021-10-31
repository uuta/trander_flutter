import '/import.dart';

class IconCircle extends StatelessWidget {
  final IconData icon;
  final Color iconColor;

  const IconCircle({Key? key, required this.icon, required this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Icon(
        icon,
        color: iconColor,
      ),
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(20),
        primary: Colors.white,
        onPrimary: Colors.black38,
        elevation: 5,
      ),
    );
  }
}
