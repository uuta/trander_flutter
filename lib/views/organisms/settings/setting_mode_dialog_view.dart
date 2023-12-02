import '/import.dart';

class SettingModeDialogView extends HookConsumerWidget {
  const SettingModeDialogView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locationNotifer = ref.watch(locationNotifierProvider.notifier);
    final locationState = ref.watch(locationNotifierProvider);

    return SimpleDialog(
      title: Text(
        "Mode",
        style: Theme.of(context).textTheme.displayMedium,
      ),
      children: ConstsSetting.mode.entries.toList().map((e) {
        return SimpleDialogOption(
          onPressed: () {
            locationNotifer.setMode(e.value);
            Navigator.pop(context);
          },
          child: locationState.settingMode == e.value
              ? Container(
                  color: Theme.of(context).primaryColorLight,
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    e.key,
                    style: const TextStyle(color: Colors.white),
                  ),
                )
              : Container(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    e.key,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
        );
      }).toList(),
    );
  }
}
