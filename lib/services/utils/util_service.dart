class UtilService {
  /// substring from min to max
  static String shortenStr(String? text, {int min = 0, int max = 20}) {
    if (text == '' || text == null) {
      return '';
    }

    if (text.length <= max) {
      return text;
    }

    return "${text.substring(min, max)}...";
  }
}
