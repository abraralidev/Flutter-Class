// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ConstrainedBoxpage extends StatelessWidget {
  const ConstrainedBoxpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 200,
            ),
            child: Container(
              color: Colors.teal,
              child: const Text(
                'Woolha dot com',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 22),
                overflow: TextOverflow.visible,
              ),
            ),
          )
        ],
      ),
    );
  }
}
