import '/import.dart';
import '/views/molecules/columns/title_caption_view.dart';
import '/views/organisms/purchases/purchase_price_cards_view.dart';
import '/views/atoms/buttons/submit_button_view.dart';

class PurchaseOfferView extends HookConsumerWidget {
  const PurchaseOfferView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final purchaseNotifier = ref.watch(purchaseNotifierProvider.notifier);

    return Center(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      const SizedBox(height: 40),
      const TitleCaptionView(
        title: 'Unlock Unlimited Access',
        caption: 'Unlimited access to the API',
      ),
      const SizedBox(height: 20),
      Image.asset(
        'assets/images/stories/disco.png',
        width: 250,
      ),
      const PurchasePriceCards(),
      const SizedBox(height: 30),
      SubmitButtonView(
          text: 'Unlock',
          onPressed: () {
            purchaseNotifier.purchaseProduct();
          }),
      const SizedBox(height: 50),
    ]));
  }
}
