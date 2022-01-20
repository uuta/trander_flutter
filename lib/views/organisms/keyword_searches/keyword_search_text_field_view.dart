import '/import.dart';

class KeywordSearchTextFieldView extends HookConsumerWidget {
  const KeywordSearchTextFieldView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locationNotifier = ref.watch(locationNotifierProvider.notifier);

    return Positioned(
        top: 20.0,
        left: 20.0,
        right: 20.0,
        child: Material(
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            elevation: 20.0,
            child: TextField(
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
