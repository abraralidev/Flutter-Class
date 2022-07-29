// ignore_for_file: no_leading_underscores_for_local_identifiers
import 'package:ebuy/Screens/Onboarding_Screen/onbording.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:gif_view/gif_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 4),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const Onbording())));
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration:
            const BoxDecoration(color: Color.fromRGBO(236, 236, 238, 0)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                GifView.asset(
                  'assets/splash.gif',
                  height: 300,
                  width: 300,
                  frameRate: 30, // default is 15 FPS
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
