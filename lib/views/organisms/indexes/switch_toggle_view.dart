import '/import.dart';
import 'package:toggle_switch/toggle_switch.dart';

// @see: https://github.com/pramodjoshi/toggle_switch
class SwitchToggleView extends HookConsumerWidget {
  const SwitchToggleView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locationState = ref.watch(locationNotifierProvider);
    final locationStateNotifier = ref.watch(locationNotifierProvider.notifier);

    return ToggleSwitch(
      minWidth: MediaQuery.of(context).size.width,
      cornerRadius: 20.0,
      inactiveFgColor: Theme.of(context).primaryColor,
      inactiveBgColor: Colors.grey[700],
      initialLabelIndex:
          locationState.locationType == LocationType.backpacker ? 0 : 1,
      radiusStyle: true,
      doubleTapDisable: false, // re-tap active widget to de-activate
      totalSwitches: 2,
      labels: const ['Backpacker', 'From your location'],
      customTextStyles: const [
        TextStyle(fontWeight: FontWeight.w500),
        TextStyle(fontWeight: FontWeight.w500)
      ],
      onToggle: (index) {
        final locationType = index == 0
            ? LocationType.backpacker
            : LocationType.fromYourLocation;
        locationStateNotifier.setLocationType(locationType);
      },
    );
  }
}
