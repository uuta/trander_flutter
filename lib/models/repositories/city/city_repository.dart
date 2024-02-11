import '/import.dart';

class CityRepository {
  Future<Response> getCity(
      Map<String, dynamic> params, String? accessToken) async {
    return await Dio().get(dotenv.get('API_DOMAIN') + ConstsApi.cities,
        queryParameters: params,
        options: Options(headers: {
          "Content-Type": "application/json",
          "Authorization": " Bearer $accessToken",
        }));
  }

  Future<Response> getCityBackpacker(String? accessToken) async {
    return await Dio()
        .get(dotenv.get('API_DOMAIN') + ConstsApi.citiesBackpacker,
            options: Options(headers: {
              "Content-Type": "application/json",
              "Authorization": " Bearer $accessToken",
            }));
  }
}
