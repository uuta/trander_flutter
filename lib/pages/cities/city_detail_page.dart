import '/import.dart';
import 'package:trander_flutter/views/indexes/city_title_view.dart';

class CityDetailPage extends HookConsumerWidget {
  const CityDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar:
            AppBar(title: const CityTitleView(), backgroundColor: Colors.white),
        body: Text('aaaaaaaaaaaaaa'));
  }
}
