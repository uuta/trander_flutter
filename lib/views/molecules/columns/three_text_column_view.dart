import '/import.dart';
import '/views/atoms/texts/country_flag_text_view.dart';

class ThreeTextColumnView extends StatelessWidget {
  final String? name, countryCode;
  const ThreeTextColumnView({
    Key? key,
    this.name,
    this.countryCode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (countryCode != '')
        ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                Text(
                  "Let's go here today",
                  style: Theme.of(context).textTheme.headline1,
                ),
                const SizedBox(height: 25),
                CountryFlagTextView(
                  name: name,
                  countryCode: countryCode,
                ),
                const SizedBox(height: 25),
                Text(
                  'Change your way of life',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ])
        : Text.rich(
            TextSpan(
              style: Theme.of(context).textTheme.headline4,
              children: [
                TextSpan(
                  text: name,
                )
              ],
            ),
          );
  }
}
