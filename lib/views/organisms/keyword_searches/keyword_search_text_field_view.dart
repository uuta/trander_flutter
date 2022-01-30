import '/import.dart';

class KeywordSearchTextFieldView extends HookConsumerWidget {
  const KeywordSearchTextFieldView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locationState = ref.watch(locationNotifierProvider);
    final locationNotifier = ref.watch(locationNotifierProvider.notifier);

    return Positioned(
        top: 20.0,
        left: 5.0,
        right: 5.0,
        child: Material(
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            elevation: 5.0,
            child: TextField(
              controller: TextEditingController(text: locationState.keyword),
              style: Theme.of(context).textTheme.headline6,
              cursorColor: Theme.of(context).primaryColorLight,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: Theme.of(context).primaryColorLight,
                ),
                hintText: 'Search...',
              ),
              onChanged: (text) {
                locationNotifier.setKeyword(text);
              },
            )));
  }
}
