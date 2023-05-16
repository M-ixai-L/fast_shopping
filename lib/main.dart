import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fast_shopping/app/app.dart';
import 'package:fast_shopping/injections/injection.config.dart';
import 'package:fast_shopping/utils/firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final FirebaseApp app = await Firebase.initializeApp();

  final FirebaseAuth firebaseAuth = FirebaseAuth.instanceFor(app: app);
  final FirebaseFirestore firebaseFirestore =
      FirebaseFirestore.instanceFor(app: app);

  final GetIt getIt = GetIt.asNewInstance()
    ..registerSingleton(firebaseAuth)
    ..registerSingleton(firebaseFirestore)
    ..registerSingleton(GoogleSignIn());

  getIt.init();

  runApp(App(getIt: getIt));
}
