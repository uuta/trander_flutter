import '/import.dart';
import '/models/controllers/navigation/navigation_state.dart';

final navigationNotifierProvider =
    StateNotifierProvider<NavigationController, NavigationState>(
  (ref) => NavigationController(),
);

class NavigationController extends StateNotifier<NavigationState> {
  NavigationController() : super(const NavigationState());

  void current(int index) => state = state.copyWith(selectedIndex: index);
}
