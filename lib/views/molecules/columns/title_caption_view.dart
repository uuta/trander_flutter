import '/import.dart';

class TitleCaptionView extends StatelessWidget {
  final String title, caption;
  const TitleCaptionView({Key? key, required this.title, required this.caption})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Text(
        title,
        style: Theme.of(context).textTheme.headline3,
      ),
      const SizedBox(height: 15.0),
      Text(caption, style: Theme.of(context).textTheme.bodyText2),
    ]);
  }
}
