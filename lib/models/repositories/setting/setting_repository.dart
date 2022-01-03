import '/import.dart';
import '/consts/api.dart';

class SettingRepository {
  Future<Response> getSetting(String? idToken) async {
    return await Dio().get(dotenv.get('API_DOMMIN') + ConstsApi.setting,
        options: Options(headers: {
          "Content-Type": "application/json",
          "Authorization": " Bearer $idToken",
        }));
  }

  Future<Response> postSetting(
      String? idToken, Map<String, dynamic> body) async {
    return await Dio().post(dotenv.get('API_DOMMIN') + ConstsApi.setting,
        options: Options(headers: {
          "Content-Type": "application/json",
          "Authorization": " Bearer $idToken",
        }),
        data: body);
  }
}
