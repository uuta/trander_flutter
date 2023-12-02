import '/import.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth0_state.freezed.dart';

@freezed
class Auth0State with _$Auth0State {
  const factory Auth0State({
    @Default(false) bool isBusy,
    @Default(false) bool isLoggedIn,
    required Auth0DataState data,
    String? idToken,
    String? errorMessage,
  }) = _Auth0State;
}
