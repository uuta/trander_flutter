class UtilPriceService {
  static double getMonthlyPrice(double? dividend) {
    if (dividend == null || dividend <= 0) {
      return 0;
    }
    return dividend / 12;
  }

  static double getOffPercent(double? dividend, double? divisor) {
    if (dividend == null || dividend <= 0) {
      return 0;
    }

    if (divisor == null || divisor <= 0) {
      return 0;
    }

    final double offPrice = divisor - dividend;
    return (offPrice / divisor) * 100;
  }
}
