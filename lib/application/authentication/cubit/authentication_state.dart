part of 'authentication_cubit.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  factory AuthenticationState({
    @Default(false) bool isAuthenticated,
    User? user,
  }) = _AuthenticationState;
  factory AuthenticationState.initial() => AuthenticationState();
}
