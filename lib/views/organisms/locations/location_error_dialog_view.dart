import '/import.dart';

class LocationErrorDialogView extends HookConsumerWidget {
  const LocationErrorDialogView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locationState = ref.watch(locationNotifierProvider);
    final locationNotifier = ref.watch(locationNotifierProvider.notifier);

    return AlertDialog(
      title: const Text('Oops!'),
      titleTextStyle: Theme.of(context).textTheme.headline3,
      content: Text(locationState.errorMessage.toString()),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            locationNotifier.offErrorMessage();
          },
          child: const Text('OK'),
        ),
      ],
    );
  }
}
