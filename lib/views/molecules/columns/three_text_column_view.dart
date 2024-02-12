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
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Let's go here today",
            style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  color: Theme.of(context).primaryColor,
                ),
          ),
          const SizedBox(height: 25),
          ShadowIconTextView(
            name: name,
            icon: (countryCode != null)
                ? Image.network('https://flagcdn.com/h20/$countryCode.png')
                : const Text(''),
          ),
          const SizedBox(height: 25),
          Text(
            'Discover the unexpected',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]);
  }
}
