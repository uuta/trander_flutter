import '/import.dart';

class ErrorDialogView extends StatelessWidget {
  final String errorMessage;
  final String? title;
  final VoidCallback? onPressed;
  const ErrorDialogView(
      {super.key, required this.errorMessage, this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title ?? 'Oops!'),
      titleTextStyle: Theme.of(context).textTheme.displaySmall,
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
