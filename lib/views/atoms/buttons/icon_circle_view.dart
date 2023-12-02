import '/import.dart';

class IconCircleView extends StatelessWidget {
  final IconData icon;
  final Color iconColor;

  const IconCircleView(
      {super.key, required this.icon, required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(20),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black38,
        elevation: 3,
      ),
      child: Icon(
        icon,
        color: iconColor,
      ),
    );
  }
}
