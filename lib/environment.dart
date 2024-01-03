import '/import.dart';

class Environment {
  static const Map<String, String> env = {
    'dev': '.env.dev',
    'stg': '.env.stg',
    'prod': '.env.prod'
  };

  // Environement configuration
  static Future<void> setup() async {
    const flavor = String.fromEnvironment('FLAVOR');
    env.forEach((key, value) async {
      if (key == flavor) {
        await dotenv.load(fileName: value);
      }
    });
  }
}
