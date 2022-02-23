import '/import.dart';

class DistanceRepository {
  Future<Response> getDistance(
      Map<String, dynamic> params, String? idToken) async {
    return await Dio().get(dotenv.get('API_DOMAIN') + ConstsApi.distance,
        queryParameters: params,
        options: Options(headers: {
          "Content-Type": "application/json",
          "Authorization": " Bearer $idToken",
        }));
  }
}
