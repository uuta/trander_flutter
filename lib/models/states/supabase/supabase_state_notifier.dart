import '/import.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';

final supabaseNotifierProvider =
    StateNotifierProvider<SupabaseStateNotifier, SupabaseState>(
  (ref) => SupabaseStateNotifier(),
);

class SupabaseStateNotifier extends StateNotifier<SupabaseState> {
  SupabaseStateNotifier()
      : super(const SupabaseState(data: SupabaseDataState()));

  Future<void> initialize() async {
    try {
      await Supabase.initialize(
        url: ConstsSupabase.supabaseUrl,
        anonKey: ConstsSupabase.supabaseAnonKey,
      );
      state = state.copyWith(client: Supabase.instance.client);
    } on Exception catch (e, s) {
      debugPrint('error: $e - stack: $s');
      // TODO:
      // logout();
      PurchaseService.logout();
    }
  }

  // TODO: Consider using this later
  // https://supabase.com/blog/flutter-authentication#:~:text=void%20_setupAuthListener
  // Future<void> setupAuthListener() async {
  //   final supabase = state.client;
  //   supabase!.auth.onAuthStateChange.listen((data) {
  //     final event = data.event;
  //     if (event == AuthChangeEvent.signedIn) {
  //       Navigator.of(context).pushReplacement(
  //         MaterialPageRoute(
  //           builder: (context) => const ProfileScreen(),
  //         ),
  //       );
  //     }
  //   });
  // }

  Future<AuthResponse> googleSignIn() async {
    final supabase = state.client;

    /// TODO: update the Web client ID with your own.
    ///
    /// Web Client ID that you registered with Google Cloud.
    final webClientId = ConstsAuth.googleCliendId;

    /// TODO: update the iOS client ID with your own.
    ///
    /// iOS Client ID that you registered with Google Cloud.
    final iosClientId = ConstsAuth.googleCliendId;

    // Google sign in on Android will work without providing the Android
    // Client ID registered on Google Cloud.

    final GoogleSignIn googleSignIn = GoogleSignIn(
      clientId: iosClientId,
      serverClientId: webClientId,
    );
    final googleUser = await googleSignIn.signIn();
    final googleAuth = await googleUser!.authentication;
    final accessToken = googleAuth.accessToken;
    final idToken = googleAuth.idToken;

    // TODO: is this right for Trander UI?
    if (accessToken == null) {
      throw 'No Access Token found.';
    }
    if (idToken == null) {
      throw 'No ID Token found.';
    }

    return supabase!.auth.signInWithIdToken(
      provider: OAuthProvider.google,
      idToken: idToken,
      // TODO: upgrade
      accessToken: accessToken,
    );
  }
}
