import '/import.dart';

class CityTitleView extends HookConsumerWidget {
  const CityTitleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locationState = ref.watch(locationNotifierProvider);
    final String? countryCode = locationState.cityData.countryCode;

    return (countryCode != '')
        ? Text.rich(
            TextSpan(
              style: HeaderStyles.header4(),
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
                  text: UtilService.shortenStr(locationState.cityData.name,
                      max: 28),
                )
              ],
            ),
          )
        : Text.rich(
            TextSpan(
              style: HeaderStyles.header4(),
              children: [
                TextSpan(
                  text: locationState.cityData.name,
                )
              ],
            ),
          );
  }
}
