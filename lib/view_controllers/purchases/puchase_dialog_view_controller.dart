import '/import.dart';
import '/views/molecules/dialogs/purchase_dialog_view.dart';

class PurchaseDialogViewController {
  // City dialog
  static void showPurchaseDialog(BuildContext context,
      LocationState locationState, LocationStateNotifier locationNotifier) {
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      showDialog(
          context: context,
          barrierDismissible: true,
          builder: (BuildContext childContext) {
            return WillPopScope(
                child: PurchaseDialogView(
                    onPressed: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const PurchasePage())),
                        }),
                onWillPop: () {
                  locationNotifier.switchPaymantDialog(false);
                  Navigator.pop(context);
                  return Future.value(false);
                });
          });
    });
  }
}
