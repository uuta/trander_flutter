import '/import.dart';
import '/views/molecules/dialogs/purchase_dialog_view.dart';

class PurchaseDialogViewController {
  // City dialog
  static void showPurchaseDialog(BuildContext context,
      LocationState locationState, LocationStateNotifier locationNotifier) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showDialog(
          context: context,
          barrierDismissible: true,
          builder: (BuildContext childContext) {
            // Possible to dismiss this dialog by passing a value to Riverpod as tapping outside the dialog
            return PopScope(
                child: PurchaseDialogView(
                    purchaseErrorMessage: locationState.purchaseErrorMessage,
                    onPressed: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const PurchasePage())),
                        }),
                canPop: () {
                  locationNotifier.switchPaymantDialog(false);
                  Navigator.pop(context);
                  return false;
                }());
          });
    });
  }
}
