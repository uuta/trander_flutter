import '/import.dart';

class SettingRangePage extends HookConsumerWidget {
  const SettingRangePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locationState = ref.watch(locationNotifierProvider);
    final locationNotifier = ref.watch(locationNotifierProvider.notifier);

    final RangeValues _currentRange = RangeValues(
        locationState.settingData.minDistance.toDouble(),
        locationState.settingData.maxDistance.toDouble());

    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Distance Range',
            style: Theme.of(context).textTheme.headline2,
          ),
        ),
        body: Column(children: <Widget>[
          const SizedBox(height: 40),
          RangeSlider(
            values: RangeValues(_currentRange.start, _currentRange.end),
            onChanged: (RangeValues values) {
              locationNotifier.setRange(values);
            },
            min: 0.0,
            max: 100.0,
            divisions: 100,
            labels: RangeLabels(
                '${_currentRange.start}km', '${_currentRange.end}km'),
            activeColor: Theme.of(context).primaryColorLight,
          ),
        ]));
  }
}
