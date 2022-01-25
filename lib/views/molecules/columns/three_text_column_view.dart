import '/import.dart';
import '../../atoms/texts/shadow_icon_text_view.dart';

class ThreeTextColumnView extends StatelessWidget {
  final String name;
  final String? countryCode;
  const ThreeTextColumnView({
    Key? key,
    this.name = '',
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
                  style: Theme.of(context).textTheme.headline2,
                ),
                const SizedBox(height: 25),
                ShadowIconTextView(
                  name: name,
                  icon:
                      Image.network('https://flagcdn.com/h20/$countryCode.png'),
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