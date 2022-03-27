import '/import.dart';
import '/views/atoms/buttons/elevated_text_button_view.dart';

class PurchaseDialogView extends StatelessWidget {
  final VoidCallback onPressed;
  const PurchaseDialogView({Key? key, required this.onPressed})
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
                  style: Theme.of(context).textTheme.headline6,
                ),
                const SizedBox(height: 16.0),
                Text(
                  '8 days, 1 hour, 22 seconds',
                  style: Theme.of(context).textTheme.headline4,
                ),
                const SizedBox(height: 40.0),
                Text(
                  'Unlock Trander Unlimited',
                  style: Theme.of(context).textTheme.headline3,
                ),
                const SizedBox(height: 16.0),
                Text(
                  'Limitless access',
                  style: Theme.of(context).textTheme.bodyText2,
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
