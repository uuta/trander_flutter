import '/import.dart';

class BackpackerService {
  final backpackerRepository = BackpackerRepository();

  Future<dynamic> getBackpacker(String? accessToken, String keyword) async {
    // params
    final Map<String, dynamic> params = {
      'keyword': keyword,
    };
    return await backpackerRepository.getBackpacker(params, accessToken);
  }
}
