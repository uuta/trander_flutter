import '/import.dart';

class ConstsAuth0 {
  static final String auth0Domain = dotenv.get('AUTH0_DOMAIN');
  static final String auth0ClientId = dotenv.get('AUTH0_CLIENT_ID');
  static final String auth0RedirectUri = dotenv.get('AUTH0_REDIRECT_URI');
  static final String auth0Issuer = 'https://$auth0Domain';
}
