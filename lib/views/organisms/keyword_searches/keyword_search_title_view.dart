import '/import.dart';

class KeywordSearchTitleView extends HookConsumerWidget {
  const KeywordSearchTitleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locationState = ref.watch(locationNotifierProvider);

    return Text.rich(
      TextSpan(
        style: HeaderStyles.header4(),
        children: [
          TextSpan(
            text: locationState.keywordSearchData.name,
          )
        ],
      ),
    );
  }
}
