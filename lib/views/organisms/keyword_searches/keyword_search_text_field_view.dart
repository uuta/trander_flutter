import '/import.dart';

class KeywordSearchTextFieldView extends HookConsumerWidget {
  const KeywordSearchTextFieldView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locationState = ref.watch(locationNotifierProvider);

    return Positioned(
        top: 80.0,
        left: 5.0,
        right: 5.0,
        child: Material(
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            elevation: 5.0,
            child: TextField(
              controller: locationState.keywordTextEditingController,
              style: Theme.of(context).textTheme.titleLarge,
              cursorColor: Theme.of(context).primaryColorLight,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: Theme.of(context).primaryColorLight,
                ),
                hintText: 'Search...',
              ),
            )));
  }
}
