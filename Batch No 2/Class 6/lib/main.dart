import 'package:flutter/material.dart';

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
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              ReusedCard(
                childcard: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.male,
                      size: 90,
                      color: Colors.white,
                    ),
                    Text(
                      "Male",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              ReusedCard(
                childcard: Column(
                  children: [
                    Slider(
                      value: 100,
                      onChanged: (value) {},
                      max: 220,
                      min: 100,
                    )
                  ],
                ),
              ),
            ],
          )),
          Expanded(
              child: Row(
            children: [
              ReusedCard(
                childcard: Column(),
              ),
            ],
          )),
          Expanded(
              child: Row(
            children: [
              ReusedCard(
                childcard: Column(),
              ),
              ReusedCard(
                childcard: Column(),
              ),
            ],
          )),
        ],
      ),
    );
  }
}

class ReusedCard extends StatelessWidget {
  const ReusedCard({super.key, required this.childcard});

  final Widget childcard;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(10)),
        child: childcard,
      ),
    );
  }
}
