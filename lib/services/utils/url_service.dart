import 'package:url_launcher/url_launcher.dart';

class UrlService {
  static Future<void> openUrl(String? url) async {
    if (url == null) {
      return;
    }
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }
}
