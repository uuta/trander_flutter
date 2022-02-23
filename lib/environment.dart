import '/import.dart';

class Environment {
  static const Map<String, String> _env = {
    'dev': 'assets/.env.dev',
    'stg': 'assets/.env.stg',
    'prod': 'assets/.env.prod'
  };

  // Environement configuration
  static Future<void> setup() async {
    const flavor = String.fromEnvironment('FLAVOR');
    _env.forEach((key, value) async {
      if (key == flavor) {
        await dotenv.load(fileName: value);
      }
    });
  }
}
