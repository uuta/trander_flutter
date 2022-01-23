import '/import.dart';

class CountryFlagTextView extends StatelessWidget {
  final String? name, countryCode;
  const CountryFlagTextView({
    Key? key,
    this.name,
    this.countryCode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        style: Theme.of(context).textTheme.headline4,
        children: [
          WidgetSpan(
              child: Container(
                  padding: const EdgeInsets.only(right: 10),
                  child: Material(
                    elevation: 3,
                    child: Image.network(
                        'https://flagcdn.com/32x24/$countryCode.png'),
                  ))),
          TextSpan(
            text: UtilService.shortenStr(name, max: 28),
          )
        ],
      ),
    );
  }
}
