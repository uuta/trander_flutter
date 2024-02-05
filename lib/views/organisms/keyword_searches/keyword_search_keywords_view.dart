import '/import.dart';
import '/views/molecules/buttons/multiple_text_button_view.dart';

class KeywordSearchKeywordsView extends HookConsumerWidget {
  const KeywordSearchKeywordsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locationNotifier = ref.watch(locationNotifierProvider.notifier);

    void Function(String) setKeyword(LocationStateNotifier locationNotifier) =>
        (String keyword) {
          locationNotifier.setKeyword(keyword);
          locationNotifier.setControllerKeyword(keyword);
        };
    final notifierSetKeyword = setKeyword(locationNotifier);
    Map<String, Function()> keywordList = {
      'tourist attractions': () => notifierSetKeyword('tourist attractions'),
      'cafe': () => notifierSetKeyword('cafe'),
      'restaurant': () => notifierSetKeyword('restaurant'),
      'park': () => notifierSetKeyword('park'),
      'art': () => notifierSetKeyword('art'),
      'spa': () => notifierSetKeyword('spa'),
      'hotel': () => notifierSetKeyword('hotel'),
      'forest': () => notifierSetKeyword('forest'),
    };

    return MultipleTextButtonView(textFeatures: keywordList);
  }
}
