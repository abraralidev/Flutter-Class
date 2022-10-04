import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.blue,
                  margin: const EdgeInsets.all(12),
                ),
              )
            ],
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.blue,
                  margin: const EdgeInsets.all(12),
                ),
              )
            ],
          )),
        ],
      ),
    );
  }
}
