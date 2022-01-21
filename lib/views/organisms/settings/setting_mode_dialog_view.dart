import '/import.dart';

class SettingModeDialogView extends HookConsumerWidget {
  const SettingModeDialogView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locationNotifer = ref.watch(locationNotifierProvider.notifier);
    final locationState = ref.watch(locationNotifierProvider);

    return SimpleDialog(
      title: Text(
        "Mode",
        style: HeaderStyles.header2(),
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
                  child: Text(
                    e.key,
                    style: const TextStyle(color: Colors.white),
                  ),
                  padding: const EdgeInsets.all(10),
                )
              : Container(
                  child: Text(e.key),
                  padding: const EdgeInsets.all(10),
                ),
        );
      }).toList(),
    );
  }
}
