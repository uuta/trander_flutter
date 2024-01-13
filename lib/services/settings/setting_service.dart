import '/import.dart';

class SettingService {
  final settingRepository = SettingRepository();

  Future<LocationState> getSetting(
      LocationState state, String? accessToken) async {
    final res = await settingRepository.getSetting(accessToken);
    return (res.data.isNotEmpty)
        ? state = state.copyWith(
            isLoading: false, settingData: SettingState.fromJson(res.data))
        : state = state.copyWith(isLoading: false);
  }

  Future<LocationState> postSetting(
      LocationState state, String? accessToken) async {
    await settingRepository.postSetting(
        accessToken, state.settingData.toJson());
    return state.copyWith(isLoading: false);
  }
}
