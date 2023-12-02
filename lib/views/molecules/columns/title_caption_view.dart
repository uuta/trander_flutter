import '/import.dart';

class TitleCaptionView extends StatelessWidget {
  final String title, caption;
  const TitleCaptionView(
      {super.key, required this.title, required this.caption});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Text(
        title,
        style: Theme.of(context).textTheme.displaySmall,
      ),
      const SizedBox(height: 15.0),
      Text(caption, style: Theme.of(context).textTheme.bodyMedium),
    ]);
  }
}
