// ignore_for_file: camel_case_types

import 'package:class_4/Widgets/list_containner.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: const [
          listcontainer(),
          listcontainer(),
          listcontainer(),
          listcontainer(),
          listcontainer(),
          listcontainer(),
          listcontainer(),
          listcontainer()
        ],
      ),
    );
  }
}
