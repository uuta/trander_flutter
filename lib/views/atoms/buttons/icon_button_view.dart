import '/import.dart';

class IconButtonView extends StatelessWidget {
  final Function()? onPressed;
  const IconButtonView({Key? key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 15,
      bottom: 20,
      child: ElevatedButton.icon(
          icon: const Icon(
            Icons.info_outline,
            size: 32.0,
            color: Colors.orangeAccent,
          ),
          label: Text(
            'More Info',
            style: Theme.of(context).textTheme.headline5,
          ),
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            primary: Colors.white,
            padding:
                const EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 20),
          )),
    );
  }
}
