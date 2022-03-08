import 'package:trander/import.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Function: getMonthlyPrice', () {
    test('Give null then return 0', () {
      expect(UtilPriceService.getMonthlyPrice(null), 0);
    });

    test('Give a negative number then return 0', () {
      expect(UtilPriceService.getMonthlyPrice(-22), 0);
    });

    test('Give 38 then return 3.17', () {
      expect(UtilPriceService.getMonthlyPrice(38), 3.17);
    });
  });

  group('Function: getOffPercent', () {
    test('Give null firstly then return 0', () {
      expect(UtilPriceService.getOffPercent(null, 200), 0);
    });

    test('Give null secondoly then return 0', () {
      expect(UtilPriceService.getOffPercent(200, null), 0);
    });

    test('Give 100 and 300 then return 67', () {
      expect(UtilPriceService.getOffPercent(100, 300), 67);
    });
  });

  group('Function: getCurrencySign', () {
    test('Give null then return empty', () {
      expect(UtilPriceService.getCurrencySign(null), '');
    });

    test('Give number then return empty', () {
      expect(UtilPriceService.getCurrencySign('200'), '');
    });

    test('Give €9.99 then return €', () {
      expect(UtilPriceService.getCurrencySign('€9.99'), '€');
    });

    test('Give ¥7,000 then return ¥', () {
      expect(UtilPriceService.getCurrencySign('¥7,000'), '¥');
    });
  });
}
