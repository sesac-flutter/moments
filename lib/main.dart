import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:moments/app.dart';
import 'package:moments/config/di.dart';
import 'package:moments/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  diSetup();
  runApp(const MyApp());
}
