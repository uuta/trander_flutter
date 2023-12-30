import '/import.dart';

class ConstsSupabase {
  static final String supabaseUrl = dotenv.get('SUPABASE_URL');
  static final String supabaseAnonKey = dotenv.get('SUPABASE_ANONKEY');
}
