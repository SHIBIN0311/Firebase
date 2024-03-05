import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_testing/login_page.dart';
import 'package:firebase_testing/splash_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCuzRdC0IZVex6ti2VRj_3G9v4feXkrLB4",
            authDomain: "new-one-bc054.firebaseapp.com",
            projectId: "new-one-bc054",
            storageBucket: "new-one-bc054.appspot.com",
            messagingSenderId: "780173002667",
            appId: "1:780173002667:web:984ae709c86a5f9a9474ee"));
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        debugShowCheckedModeBanner: false,
        title: 'Flutter Firebase',
        home: const SplashScreen(
          child: LoginPage(),
        ));
  }
}
