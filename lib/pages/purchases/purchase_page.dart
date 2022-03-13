import '/import.dart';
import '/views/molecules/dialogs/error_dialog_view.dart';
import '/views/organisms/purchases/purchase_offer_view.dart';
import '/views/organisms/purchases/purchase_subscribed_view.dart';

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
                child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Stack(children: [
                      (purchaseState.isActive)
                          ? const PurchaseSubscribedView()
                          : const PurchaseOfferView(),
                      // Error dialog
                      if (purchaseState.errorMessage != '')
                        Positioned(
                            top: 100.0,
                            left: 30.0,
                            right: 30.0,
                            bottom: 100.0,
                            child: ErrorDialogView(
                              errorMessage: purchaseState.errorMessage,
                              onPressed: () =>
                                  purchaseNotifier.offErrorMessage(),
                            )),
                    ]))));
  }
}
