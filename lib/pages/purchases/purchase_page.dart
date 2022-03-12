import '/import.dart';
import '/views/molecules/columns/title_caption_view.dart';
import '/views/organisms/purchases/purchase_price_cards_view.dart';
import '/views/atoms/buttons/submit_button_view.dart';
import '/views/molecules/dialogs/error_dialog_view.dart';

class PurchasePage extends HookConsumerWidget {
  const PurchasePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final purchaseState = ref.watch(purchaseNotifierProvider);
    final purchaseNotifier = ref.watch(purchaseNotifierProvider.notifier);

    useEffect(() {
      Future.microtask(() async {
        await purchaseNotifier.initAction();
      });
      return;
    }, const []);

    return purchaseState.isLoading
        ? const ScaffoldProgressPage()
        : Scaffold(
            appBar: AppBar(
              title: Text(
                'Subscription',
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
            body: SingleChildScrollView(
                child: Stack(children: [
              Center(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
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
                  ])),
              // Error dialog
              if (purchaseState.errorMessage != '')
                Positioned(
                    top: 100.0,
                    left: 30.0,
                    right: 30.0,
                    bottom: 100.0,
                    child: ErrorDialogView(
                      errorMessage: purchaseState.errorMessage,
                      onPressed: () => purchaseNotifier.offErrorMessage(),
                    )),
            ])));
  }
}
