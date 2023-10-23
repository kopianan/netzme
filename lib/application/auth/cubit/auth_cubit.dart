import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netzme/domain/auth/auth_failure.dart';
import 'package:netzme/domain/auth/i_auth.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this.iAuth) : super(const AuthState.initial());
  final IAuth iAuth;

  void checkAuth() async {
    await Future.delayed(Duration.zero);
    final user = iAuth.getSignedInUser();
    print(user);
    user.fold(
      () => emit(const AuthState.unauthenticated()),
      (a) => emit(AuthState.authenticated(a)),
    );
  }

  void signInWithGoogle() async {
    final user = await iAuth.signInWithGoogle();
    user.fold(
      (l) => emit(AuthState.failure(l)),
      (r) {
        checkAuth();
      },
    );
  }

  void logOut() async {
    await iAuth.signOut();
    checkAuth();
  }
}
