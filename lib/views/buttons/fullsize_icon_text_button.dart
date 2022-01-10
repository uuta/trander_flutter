import '/import.dart';

// TODO: Unused but might be fundamental for detail page
class FullsizeIconTextButton extends HookConsumerWidget {
  final double width;
  final Widget icon;
  final String text;
  const FullsizeIconTextButton(
      {Key? key, required this.text, required this.icon, this.width = 100})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
        width: width,
        child: ElevatedButton.icon(
            icon: icon,
            label: Text(
              text,
              style: HeaderStyles.header4(),
            ),
            onPressed: () {
              // TODO: Move to city detail page
              print('Pressed');
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              primary: Colors.white,
              padding:
                  const EdgeInsets.only(top: 7, bottom: 7, left: 10, right: 20),
            )));
  }
}
