import '/import.dart';

class CountryFlagTextView extends StatelessWidget {
  final String name;
  final String? countryCode;
  const CountryFlagTextView({
    Key? key,
    this.name = '',
    this.countryCode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.network('https://flagcdn.com/32x24/$countryCode.png'),
        ),
        Flexible(
            child: Text(
          name,
          style: Theme.of(context).textTheme.headline5,
        )),
      ],
    );
  }
}
