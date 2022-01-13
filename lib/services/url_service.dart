import '/import.dart';

class UrlService {
  static Future<void> launchUrl(String? url) async {
    if (url == null) {
      return;
    }

    if (await canLaunch(url)) {
      await launch(url);
    }
  }
}
