import '/import.dart';
import '/models/models.dart';

final navigationNotifierProvider =
    StateNotifierProvider<NavigationStateNotifier, NavigationState>(
  (ref) => NavigationStateNotifier(),
);

class NavigationStateNotifier extends StateNotifier<NavigationState> {
  NavigationStateNotifier() : super(const NavigationState());

  Future<NavigationState> changeIndex(int index) async {
    state = state.copyWith(prevIndex: state.currentIndex, currentIndex: index);
    return state;
  }
}
