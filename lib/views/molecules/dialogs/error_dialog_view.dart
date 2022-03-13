import '/import.dart';

class ErrorDialogView extends StatelessWidget {
  final String errorMessage;
  final String? title;
  final VoidCallback? onPressed;
  const ErrorDialogView(
      {Key? key, required this.errorMessage, this.title, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title ?? 'Oops!'),
      titleTextStyle: Theme.of(context).textTheme.headline3,
      content: Text(errorMessage),
      actions: <Widget>[
        TextButton(
          onPressed: onPressed,
          child: const Text('OK'),
        ),
      ],
    );
  }
}
