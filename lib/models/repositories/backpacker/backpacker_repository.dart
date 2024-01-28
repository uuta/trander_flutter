import '/import.dart';

class BackpackerRepository {
  Future<Response> getBackpacker(
      Map<String, dynamic> params, String? accessToken) async {
    return await Dio().get(dotenv.get('API_DOMAIN') + ConstsApi.backpacker,
        queryParameters: params,
        options: Options(headers: {
          "Content-Type": "application/json",
          "Authorization": " Bearer $accessToken",
        }));
  }
}
