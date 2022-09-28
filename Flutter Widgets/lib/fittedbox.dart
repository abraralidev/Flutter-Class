// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class FitedboxPage extends StatelessWidget {
  const FitedboxPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            color: Colors.white,
            child: Row(
              children: [
                Container(
                  child: const Text(
                    "Understand Without FittedBox",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 200,
                  child: Image.network(
                    'https://images.unsplash.com/photo-1664386047649-3fa3527a5cd5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
                  ),
                ),
              ],
            ),
          ),
          FittedBox(
            child: Card(
              color: Colors.white,
              child: Row(
                children: [
                  Container(
                    child: const Text(
                      "Understand With FittedBox",
                      style: TextStyle(fontSize: 20, color: Colors.black,fontFamily: "BungeeSpice"),
                    ),
                  ),
                  SizedBox(
                    height: 200,
                    child: Image.network(
                      'https://images.unsplash.com/photo-1664386047649-3fa3527a5cd5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
