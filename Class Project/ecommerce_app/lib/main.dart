// ignore_for_file: library_private_types_in_public_api, await_only_futures, unused_local_variable, depend_on_referenced_packages

import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app/Authentication/authenication.dart';
import 'package:ecommerce_app/Config/config.dart';
import 'package:ecommerce_app/Store/storehome.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart' show Firebase;
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  EcommerceApp.auth = FirebaseAuth.instance;
  EcommerceApp.sharedPreferences = await SharedPreferences.getInstance();
  EcommerceApp.firestore = FirebaseFirestore.instance;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'e-Shop',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.green,
        ),
        home: const SplashScreen());
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    displaysplash();
  }

  displaysplash() {
    Timer(const Duration(seconds: 3), (() async {
      if (await EcommerceApp.auth?.currentUser != null) {
        Route route = MaterialPageRoute(builder: (_) => const StoreHome());
        Navigator.pushReplacement(context, route);
      } else {
        Route route =
            MaterialPageRoute(builder: (_) => const AuthenticScreen());
        Navigator.pushReplacement(context, route);
      }
    }));
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.blue,
            Colors.blueAccent,
            Color.fromARGB(255, 5, 113, 167)
          ]),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Image.asset("images/welcome.png")],
          ),
        ),
      ),
    );
  }
}
