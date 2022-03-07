import '/import.dart';
import '/views/molecules/columns/title_caption_view.dart';
import '/views/organisms/purchases/purchase_price_cards.dart';
import '/views/atoms/buttons/submit_button_view.dart';

class PurchaseOfferPage extends HookConsumerWidget {
  const PurchaseOfferPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Trander Unlimited',
            style: Theme.of(context).textTheme.headline2,
          ),
        ),
        body: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              const SizedBox(height: 40),
              const TitleCaptionView(
                title: 'Unlock everything',
                caption: 'Unlimited access to the API',
              ),
              const SizedBox(height: 20),
              Image.asset(
                'assets/images/stories/disco.png',
                width: 300,
              ),
              const PurchasePriceCards(),
              const SizedBox(height: 30),
              SubmitButtonView(text: 'Unlock', onPressed: () {})
            ])));
  }
}
