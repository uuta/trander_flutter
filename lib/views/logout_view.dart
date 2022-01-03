import '/import.dart';

class LogoutView extends HookConsumerWidget {
  const LogoutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth0State = ref.watch(auth0NotifierProvider);
    final auth0Notifier = ref.read(auth0NotifierProvider.notifier);
    final locationState = ref.watch(locationNotifierProvider);
    final locationNotifier = ref.watch(locationNotifierProvider.notifier);

    final RangeValues _currentRange = RangeValues(
        locationState.settingData.minDistance.toDouble(),
        locationState.settingData.maxDistance.toDouble());

    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue, width: 4),
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(auth0State.data!['picture'] ?? ''),
            ),
          ),
        ),
        const SizedBox(height: 24),
        Text('Name: ' + auth0State.data!['name']),
        const SizedBox(height: 48),
        ElevatedButton(
          onPressed: () async {
            auth0Notifier.logout();
          },
          child: const Text('Logout'),
        ),
        const SizedBox(height: 48),
        Text('Distance Range', style: HeaderStyles.header1()),
        const SizedBox(height: 28),
        RangeSlider(
          values: RangeValues(_currentRange.start, _currentRange.end),
          onChanged: (RangeValues values) {
            locationNotifier.setRange(values);
          },
          min: 0.0,
          max: 100.0,
          divisions: 100,
          labels:
              RangeLabels('${_currentRange.start}km', '${_currentRange.end}km'),
          activeColor: Theme.of(context).primaryColorLight,
        ),
      ],
    ));
  }
}
