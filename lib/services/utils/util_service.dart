import '/import.dart';

class UtilService {
  /// substring from min to max
  static String shortenStr(String? text, {int min = 0, int max = 20}) {
    if (text == '' || text == null) {
      return '';
    }

    if (text.length <= max) {
      return text;
    }

    return text.substring(min, max) + '...';
  }

  static void dPrint(String text) {
    final pattern = RegExp('.{1,800}'); // 800 is the size of each chunk
    pattern.allMatches(text).forEach((match) => debugPrint(match.group(0)));
  }
}
