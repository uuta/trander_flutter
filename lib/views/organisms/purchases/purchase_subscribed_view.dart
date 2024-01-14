import '/import.dart';
import '/views/molecules/columns/title_caption_view.dart';
import '/views/atoms/buttons/elevated_text_button_view.dart';

class PurchaseSubscribedView extends HookConsumerWidget {
  const PurchaseSubscribedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      const SizedBox(height: 30),
      const TitleCaptionView(
        title: 'Already subscribed!',
        caption: 'Thank you for using Trander Unlimited.',
      ),
      const SizedBox(height: 20),
      Image.asset(
        'assets/images/stories/ramen.png',
        width: 250,
      ),
      const SizedBox(height: 40),
      const Text(
        'Your subscription is managed by the Google Play Store or Apple App Store. To make changes, update your subscription settings by the following pages.',
        textAlign: TextAlign.center,
      ),
      const SizedBox(height: 40),
      ElevatedTextButtonView(
        text: 'For Android users',
        onPrimary: Colors.grey[300],
        onPressed: () => {
          UrlService.openUrl(
              'https://support.google.com/googleplay/answer/7018481')
        },
      ),
      const SizedBox(height: 10),
      ElevatedTextButtonView(
        text: 'For iOS users',
        onPrimary: Colors.grey[300],
        onPressed: () =>
            {UrlService.openUrl('https://support.apple.com/HT202039')},
      ),
    ]));
  }
}
