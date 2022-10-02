// ignore_for_file: unused_element, unused_local_variable
import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'WhatsApp UI',
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        home: const Home());
  }
}
