import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:netzme/domain/auth/auth_failure.dart';
import 'package:netzme/domain/auth/i_auth.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuth)
class AuthRepository implements IAuth {
  AuthRepository(
    this._firebaseAuth,
    this._googleSignIn,
  );
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  @override
  Option<User> getSignedInUser() {
    log("GETTING USER...");
    return optionOf(_firebaseAuth.currentUser);
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    final account = await _googleSignIn.signIn();
    if (account == null) {
      return left(const AuthFailure.cancelledByUser());
    }

    final googleAuth = await account.authentication;

    final authProvider = GoogleAuthProvider.credential(
      idToken: googleAuth.idToken,
      accessToken: googleAuth.accessToken,
    );
    final authCred = await _firebaseAuth.signInWithCredential(authProvider);
    return right(unit);
  }

  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
    await _googleSignIn.signOut();
  }
}
