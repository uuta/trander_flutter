import '/import.dart';

class SettingDirectionDialogView extends HookConsumerWidget {
  const SettingDirectionDialogView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locationNotifer = ref.watch(locationNotifierProvider.notifier);
    final locationState = ref.watch(locationNotifierProvider);

    return SimpleDialog(
      title: Text(
        "Direction Type",
        style: Theme.of(context).textTheme.displayMedium,
      ),
      children: ConstsSetting.directionType.entries.toList().map((e) {
        return SimpleDialogOption(
          onPressed: () {
            locationNotifer.setDirectionType(e.value);
            Navigator.pop(context);
          },
          child: locationState.settingData.directionType == e.value
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
