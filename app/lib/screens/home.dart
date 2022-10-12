// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                carddata(),
                carddata(),
                carddata(),
                carddata(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class carddata extends StatelessWidget {
  const carddata({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 100,
        height: 100,
        color: Colors.blue,
        child: const Center(
          child: Text(
            'Center',
            style: TextStyle(fontSize: 35, fontFamily: 'Rubik Medium'),
          ),
        ),
      ),
    );
  }
}
