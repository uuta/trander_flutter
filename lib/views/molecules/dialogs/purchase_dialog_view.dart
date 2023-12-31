import '/import.dart';
import '/views/atoms/buttons/elevated_text_button_view.dart';

class PurchaseDialogView extends StatelessWidget {
  final VoidCallback onPressed;
  final String purchaseErrorMessage;
  const PurchaseDialogView(
      {Key? key, required this.onPressed, required this.purchaseErrorMessage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double padding = 16.0;
    return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(padding),
        ),
        elevation: 0.0,
        child: Stack(children: <Widget>[
          Container(
              padding: const EdgeInsets.only(
                  top: 50, bottom: 30, right: 20, left: 20),
              child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                Text(
                  'The next available time is after',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 16.0),
                Text(
                  purchaseErrorMessage,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 40.0),
                Text(
                  'Unlock Trander Unlimited',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                const SizedBox(height: 16.0),
                Text(
                  'Limitless access',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 24.0),
                ElevatedTextButtonView(
                  text: 'Continue',
                  height: 40,
                  width: 250,
                  onPressed: onPressed,
                ),
              ]))
        ]));
  }
}
