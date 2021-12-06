import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'auth0_state.freezed.dart';

@freezed
abstract class Auth0State with _$Auth0State {
  const factory Auth0State({
    @Default(false) bool isBusy,
    @Default(false) bool isLoggedIn,
    Map? data,
    String? errorMessage,
  }) = _Auth0State;
}
