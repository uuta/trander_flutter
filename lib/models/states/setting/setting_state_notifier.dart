import '/import.dart';
import '/models/models.dart';
import '/models/repositories/setting/setting_repository.dart';

final settingNotifierProvider =
    StateNotifierProvider<SettingResultStateNotifier, SettingResultState>(
  (ref) => SettingResultStateNotifier(),
);

class SettingResultStateNotifier extends StateNotifier<SettingResultState> {
  SettingResultStateNotifier() : super(const SettingResultState());

  final settingRepository = SettingRepository();

  Future<void> getSetting(String? idToken) async {
    try {
      state = state.copyWith(isBusy: true);
      final res = await settingRepository.getSetting(idToken);
      state = state.copyWith(
          isBusy: false, result: Result.success(res.data['data']));
    } catch (e) {
      state = state.copyWith(
          isBusy: false, result: Result.failure(ErrorHandler.getApiError(e)));
    }
  }
}
