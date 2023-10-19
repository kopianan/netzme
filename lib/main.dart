import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:netzme/app.dart';
import 'package:netzme/firebase_options.dart';
import 'package:netzme/injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(App());
}
