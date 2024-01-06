import '/import.dart';
import 'package:supabase_flutter/supabase_flutter.dart' as sb;
import 'package:google_sign_in/google_sign_in.dart';

final supabaseNotifierProvider =
    StateNotifierProvider<SupabaseStateNotifier, SupabaseState>(
  (ref) => SupabaseStateNotifier(),
);
final supabase = sb.Supabase.instance.client;

class SupabaseStateNotifier extends StateNotifier<SupabaseState> {
  SupabaseStateNotifier()
      : super(const SupabaseState(data: SupabaseDataState()));

  Future<sb.AuthResponse> googleSignIn() async {
    /// TODO: update the Web client ID with your own.
    ///
    /// Web Client ID that you registered with Google Cloud.
    final webClientId = ConstsAuth.googleCliendId;

    /// TODO: update the iOS client ID with your own.
    ///
    /// iOS Client ID that you registered with Google Cloud.
    // final iosClientId = ConstsAuth.googleCliendId;

    // Google sign in on Android will work without providing the Android
    // Client ID registered on Google Cloud.

    final GoogleSignIn googleSignIn = GoogleSignIn(
      // clientId: iosClientId,
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

    final res = await supabase.auth.signInWithIdToken(
      provider: sb.Provider.google,
      idToken: idToken,
      accessToken: accessToken,
    );
    state = state.copyWith(authResponse: res);

    return res;
  }

  Future authStateChangeAction(sb.AuthState authState) async {
    if (authState.event == sb.AuthChangeEvent.signedIn) {
      final userData = supabase.auth.currentUser!;
      state = state.copyWith(isLoggedIn: true, user: userData);
    } else if (authState.event == sb.AuthChangeEvent.signedOut) {
      state = state.copyWith(isLoggedIn: false, user: null);
    }
  }
}
