import '/import.dart';

class Auth0Repository {
  Future<TokenResponse> initAction(String storedRefreshToken) async {
    final TokenResponse? res = await _tokenRequest(storedRefreshToken);

    const FlutterSecureStorage()
        .write(key: 'refresh_token', value: res!.refreshToken);

    return res;
  }

  Future<TokenResponse?> _tokenRequest(String? storedRefreshToken) async {
    return await const FlutterAppAuth().token(TokenRequest(
      ConstsAuth0.auth0ClientId,
      ConstsAuth0.auth0RedirectUri,
      issuer: ConstsAuth0.auth0Issuer,
      refreshToken: storedRefreshToken,
    ));
  }

  Future<AuthorizationTokenResponse> login() async {
    final AuthorizationTokenResponse? res = await _authorizeExchange();

    await const FlutterSecureStorage()
        .write(key: 'refresh_token', value: res!.refreshToken);

    return res;
  }

  Future<AuthorizationTokenResponse?> _authorizeExchange() async {
    return await const FlutterAppAuth().authorizeAndExchangeCode(
      AuthorizationTokenRequest(
          ConstsAuth0.auth0ClientId, ConstsAuth0.auth0RedirectUri,
          issuer: ConstsAuth0.auth0Issuer,
          scopes: <String>['openid', 'profile', 'offline_access', 'email'],
          promptValues: ['login']),
    );
  }

  Auth0DataState parseIdToken(String? idToken) {
    final List<String> parts = idToken!.split('.');
    assert(parts.length == 3);

    return Auth0DataState.fromJson(jsonDecode(
        utf8.decode(base64Url.decode(base64Url.normalize(parts[1])))));
  }

  Future<Response> createUser(String? idToken) async {
    return await Dio().post(dotenv.get('API_DOMAIN') + ConstsApi.user,
        options: Options(headers: {
          "Content-Type": "application/json",
          "Authorization": " Bearer $idToken",
        }));
  }
}
