// Reference: https://uchinoinu.hatenablog.jp/entry/2021/07/05/152332
class EmptyResponseException implements Exception {
  const EmptyResponseException(this.message);

  final String message;

  // toString()をoverrideすることで、このクラス利用時に `print(e)` した際に `Instance of 'HogeHogeException'` ではなく中身の文字を出力することができます。
  @override
  String toString() => message;

  // TODO: Not implement yet
  void errorLogic() {
    // logic
  }
}
