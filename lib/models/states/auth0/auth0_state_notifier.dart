import '/import.dart';
import '/models/repositories/auth0/auth0_repository.dart';

final auth0NotifierProvider =
    StateNotifierProvider<Auth0StateNotifier, Auth0State>(
  (ref) => Auth0StateNotifier(),
);

class Auth0StateNotifier extends StateNotifier<Auth0State> {
  Auth0StateNotifier() : super(const Auth0State());

  final repository = Auth0Repository();

  Future<void> initAction() async {
    state = state.copyWith(isBusy: true);
    try {
      final storedRefreshToken =
          await const FlutterSecureStorage().read(key: 'refresh_token');

      // Check stored refresh token
      if (storedRefreshToken == null) {
        state = state.copyWith(isBusy: false);
        return;
      }

      // Call init action repository
      final res = await repository.initAction(storedRefreshToken);
      final data = repository.parseIdToken(res.idToken);

      state = state.copyWith(
          isBusy: false, isLoggedIn: true, data: data, idToken: res.idToken);
    } on Exception catch (e, s) {
      debugPrint('error: $e - stack: $s');
      logout();
    }
  }

  Future<void> login() async {
    state = state.copyWith(isBusy: true);
    try {
      final res = await repository.login();
      final data = repository.parseIdToken(res.idToken);
      state = state.copyWith(
          isBusy: false, isLoggedIn: true, data: data, idToken: res.idToken);
    } on Exception catch (e, s) {
      debugPrint('error: $e - stack: $s');
      state = state.copyWith(
          isBusy: false, isLoggedIn: false, errorMessage: e.toString());
    }
  }

  Future<void> logout() async {
    state = state.copyWith(isBusy: true);
    await const FlutterSecureStorage().delete(key: 'refresh_token');
    state = state.copyWith(isBusy: false, isLoggedIn: false);
  }
}
