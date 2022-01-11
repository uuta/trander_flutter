import '/import.dart';

class CityInfoButtonView extends HookConsumerWidget {
  const CityInfoButtonView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
            style: HeaderStyles.header4(),
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const CityDetailPage()));
          },
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
