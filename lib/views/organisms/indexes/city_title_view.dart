import '/import.dart';
import '/views/atoms/texts/shadow_icon_text_view.dart';

class CityTitleView extends HookConsumerWidget {
  const CityTitleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locationState = ref.watch(locationNotifierProvider);
    final String? countryCode = locationState.cityData.countryCode;

    return (countryCode != '')
        ? ShadowIconTextView(
            name: locationState.cityData.name,
            icon: Image.network('https://flagcdn.com/h20/$countryCode.png'),
            textStyle: Theme.of(context).textTheme.headlineMedium,
            shortenStr: 28,
            mainAxisAlignment: MainAxisAlignment.start,
          )
        : Text(locationState.cityData.name,
            style: Theme.of(context).textTheme.headlineSmall);
  }
}
