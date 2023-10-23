import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  GoogleSignIn get getGoogleSign => GoogleSignIn();
  @lazySingleton
  FirebaseAuth get getFirebaseAuth => FirebaseAuth.instance;
  @lazySingleton
  FirebaseFirestore get getFirestore => FirebaseFirestore.instance;
}
