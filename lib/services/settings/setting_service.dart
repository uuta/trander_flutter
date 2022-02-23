import '/import.dart';

class SettingService {
  final settingRepository = SettingRepository();

  Future<LocationState> getSetting(LocationState state, String? idToken) async {
    final res = await settingRepository.getSetting(idToken);
    return (res.data.isNotEmpty)
        ? state = state.copyWith(
            isLoading: false, settingData: SettingState.fromJson(res.data))
        : state = state.copyWith(isLoading: false);
  }

  Future<LocationState> postSetting(
      LocationState state, String? idToken) async {
    await settingRepository.postSetting(idToken, state.settingData.toJson());
    return state.copyWith(isLoading: false);
  }
}
