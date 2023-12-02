import '/import.dart';
import '/views/molecules/buttons/multiple_text_button_view.dart';

class KeywordSearchKeywordsView extends HookConsumerWidget {
  const KeywordSearchKeywordsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locationNotifier = ref.watch(locationNotifierProvider.notifier);
    Map<String, Future<void> Function()> keywordList = {
      'tourist attractions': () =>
          locationNotifier.setKeyword('tourist attractions'),
      'cafe': () => locationNotifier.setKeyword('cafe'),
      'restaurant': () => locationNotifier.setKeyword('restaurant'),
      'park': () => locationNotifier.setKeyword('park'),
      'art': () => locationNotifier.setKeyword('art'),
      'spa': () => locationNotifier.setKeyword('spa'),
      'hotel': () => locationNotifier.setKeyword('hotel'),
      'forest': () => locationNotifier.setKeyword('forest'),
    };

    return Positioned(
        top: 80.0,
        left: 5.0,
        right: 5.0,
        height: 50,
        child: MultipleTextButtonView(textFeatures: keywordList));
  }
}
