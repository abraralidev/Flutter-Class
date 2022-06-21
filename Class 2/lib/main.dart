import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'class 2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Class 2',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 58, 58),
              borderRadius: BorderRadius.circular(10)),

          // child: const Text('Class 2', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
          child: const Center(
              child: Icon(
            Icons.settings_accessibility_outlined,
            color: Colors.white,
            size: 30,
          )),
        ),
      ),
    );
  }
}
