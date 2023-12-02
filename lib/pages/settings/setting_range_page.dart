import '/import.dart';

class SettingRangePage extends HookConsumerWidget {
  const SettingRangePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locationState = ref.watch(locationNotifierProvider);
    final locationNotifier = ref.watch(locationNotifierProvider.notifier);

    final RangeValues currentRange = RangeValues(
        locationState.settingData.minDistance.toDouble(),
        locationState.settingData.maxDistance.toDouble());

    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Distance Range',
            style: Theme.of(context).textTheme.displayMedium,
          ),
        ),
        body: Column(children: <Widget>[
          const SizedBox(height: 40),
          RangeSlider(
            values: RangeValues(currentRange.start, currentRange.end),
            onChanged: (RangeValues values) {
              locationNotifier.setRange(values);
            },
            min: 0.0,
            max: 100.0,
            divisions: 100,
            labels:
                RangeLabels('${currentRange.start}km', '${currentRange.end}km'),
            activeColor: Theme.of(context).primaryColorLight,
          ),
        ]));
  }
}
