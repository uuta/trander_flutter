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
    // https://scrapbox.io/babbab/Flutter
    for (var entry in env.entries) {
      if (entry.key == flavor) {
        await dotenv.load(fileName: entry.value);
        break;
      }
    }
  }
}
