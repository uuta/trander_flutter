import '/import.dart';
import '/models/models.dart';

final navigationNotifierProvider =
    StateNotifierProvider<NavigationStateNotifier, NavigationState>(
  (ref) => NavigationStateNotifier(),
);

class NavigationStateNotifier extends StateNotifier<NavigationState> {
  NavigationStateNotifier() : super(const NavigationState());

  void current(int index) => state = state.copyWith(selectedIndex: index);
}
