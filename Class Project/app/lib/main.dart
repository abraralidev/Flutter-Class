// ignore_for_file: depend_on_referenced_packages, await_only_futures

import 'dart:async';

import 'package:app/Screens/AuthScreen.dart';
import 'package:app/Screens/Storehome.dart';
import 'package:app/config/config.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Splash(),
    );
  }
}

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    displaysplash();
  }

  void displaysplash() {
    Timer(const Duration(seconds: 3), (() async {
      if (await EcommerceApp.auth?.currentUser != null) {
        Navigator.pushReplacement(context,  MaterialPageRoute(builder: (_) => const StoreHome()));
      } else {
        // Route route =
            // MaterialPageRoute(builder: (_) => const AuthenticScreen());
        Navigator.pushReplacement(context,  MaterialPageRoute(builder: (_) => const AuthScreen()));
      }
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
