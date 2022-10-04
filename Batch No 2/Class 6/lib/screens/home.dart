import 'package:app/screens/resultscreen.dart';
import 'package:flutter/material.dart';

import '../Widgets/reusedcard.dart';

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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const ResultScreen()));
              },
              child: Container(
                width: double.infinity,
                height: 50,
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    "Calculate",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
