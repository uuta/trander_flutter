import '/import.dart';

class IconCircleView extends StatelessWidget {
  final IconData icon;
  final Color iconColor;

  const IconCircleView({Key? key, required this.icon, required this.iconColor})
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
        backgroundColor: Colors.white,
        foregroundColor: Colors.black38,
        elevation: 3,
      ),
    );
  }
}
