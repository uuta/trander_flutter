import '/import.dart';

class IconForm extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color iconColor;
  final bool obscureText;
  const IconForm(
      {Key? key,
      required this.label,
      required this.icon,
      required this.iconColor,
      required this.obscureText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            offset: Offset(5, 5),
            blurRadius: 20,
            color: Colors.black12,
          ),
        ],
      ),
      child: TextFormField(
        textAlignVertical: TextAlignVertical.center,
        obscureText: obscureText,
        style: TextStyle(
            color: Colors.grey[700], fontWeight: FontWeight.bold, fontSize: 22),
        decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Padding(
                padding: const EdgeInsetsDirectional.only(top: 20, bottom: 20),
                child: DecoratedIcon(
                  icon,
                  size: 30,
                  color: iconColor,
                  shadows: const [
                    BoxShadow(
                      blurRadius: 15.0,
                      spreadRadius: 5.0,
                      offset: Offset(2, 2),
                      color: Colors.black38,
                    ),
                  ],
                )),
            labelText: label,
            labelStyle: TextStyle(
                fontSize: 16,
                color: Colors.grey[400],
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}
