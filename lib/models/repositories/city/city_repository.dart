import '/import.dart';
import '/consts/api.dart';

class CityRepository {
  Future<Response> getCity(String? idToken) async {
    // TODO: fix
    const params = {
      'lat': 34.673521,
      'lng': 135.507772,
      'max': 100,
      'min': 0,
      'directionType': 0,
    };
    return await Dio().get(dotenv.get('API_DOMMIN') + ConstsApi.cities,
        queryParameters: params,
        options: Options(headers: {
          "Content-Type": "application/json",
          "Authorization": " Bearer $idToken",
        }));
  }
}
