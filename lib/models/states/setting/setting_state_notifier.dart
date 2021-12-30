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
    state = state.copyWith(isBusy: true, isError: false, errorMessage: '');
    try {
      final res = await settingRepository.getSetting(idToken);
      ((res.data ?? '') != '')
          ? state = state.copyWith(
              isBusy: false, data: SettingState.fromJson(res.data['data']))
          : state = state.copyWith(isBusy: false);
    } on Exception catch (e) {
      state = state.copyWith(
          isBusy: false, isError: true, errorMessage: e.toString());
    }
  }
}
