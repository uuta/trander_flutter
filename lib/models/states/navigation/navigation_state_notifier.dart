import '/import.dart';

final navigationNotifierProvider =
    StateNotifierProvider<NavigationStateNotifier, NavigationState>(
  (ref) => NavigationStateNotifier(),
);

class NavigationStateNotifier extends StateNotifier<NavigationState> {
  NavigationStateNotifier() : super(const NavigationState());

  static const Map<String, int> pages = {
    'city': 0,
    'keyword': 1,
    'settings': 2,
  };

  Future<NavigationState> changeIndex(int index) async {
    state = state.copyWith(prevIndex: state.currentIndex, currentIndex: index);
    return state;
  }
}
