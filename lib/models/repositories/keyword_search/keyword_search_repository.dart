import '/import.dart';

class KeywordSearchRepository {
  Future<Response> getKeywordSearch(
      Map<String, dynamic> params, String? accessToken) async {
    return await Dio().get(dotenv.get('API_DOMAIN') + ConstsApi.keywordSearch,
        queryParameters: params,
        options: Options(headers: {
          "Content-Type": "application/json",
          "Authorization": " Bearer $accessToken",
        }));
  }
}
