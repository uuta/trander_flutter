import '/import.dart';

class SettingRepository {
  Future<Response> getSetting(String? accssToken) async {
    return await Dio().get(dotenv.get('API_DOMAIN') + ConstsApi.setting,
        options: Options(headers: {
          "Content-Type": "application/json",
          "Authorization": " Bearer $accssToken",
        }));
  }

  Future<Response> postSetting(
      String? accssToken, Map<String, dynamic> body) async {
    return await Dio().post(dotenv.get('API_DOMAIN') + ConstsApi.setting,
        options: Options(headers: {
          "Content-Type": "application/json",
          "Authorization": " Bearer $accssToken",
        }),
        data: body);
  }
}
