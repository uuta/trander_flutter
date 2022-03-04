import '/import.dart';
import 'package:purchases_flutter/purchases_flutter.dart';

class RevenueCatSetUp {
  static Future<void> initialize() async {
    await Purchases.setup(dotenv.get('REVENUE_CAT_PUBLIC_KEY'));
    const isDebug = !bool.fromEnvironment('dart.vm.product');
    Purchases.setDebugLogsEnabled(isDebug);
  }
}
