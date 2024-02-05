import '/import.dart';
import '/views/atoms/buttons/elevated_text_button_view.dart';

class MultipleTextButtonView extends StatelessWidget {
  final Map<String, Function()> textFeatures;
  const MultipleTextButtonView({Key? key, required this.textFeatures})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: textFeatures.entries.toList().map((e) {
            return Row(children: [
              ElevatedTextButtonView(
                text: e.key,
                onPressed: e.value,
              ),
              const SizedBox(width: 8),
            ]);
          }).toList(),
        ));
  }
}
