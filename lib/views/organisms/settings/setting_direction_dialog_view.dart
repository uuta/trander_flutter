import '/import.dart';

class SettingDirectionDialogView extends HookConsumerWidget {
  const SettingDirectionDialogView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locationNotifer = ref.watch(locationNotifierProvider.notifier);

    return SimpleDialog(
      title: Text(
        "Direction Type",
        style: HeaderStyles.header2(),
      ),
      children: ConstsSetting.directionType.entries.toList().map((e) {
        return SimpleDialogOption(
          onPressed: () {
            locationNotifer.setDirectionType(e.value);
            Navigator.pop(context);
          },
          child: Text(e.key),
        );
      }).toList(),
    );
  }
}
