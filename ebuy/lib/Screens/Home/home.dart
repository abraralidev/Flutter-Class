// ignore_for_file: file_names, unused_local_variable, unnecessary_string_interpolations

import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
//create instence of provider
  @override
  Widget build(BuildContext context) {
    // first way
    // AppState provider = Provider.of<AppState>(context);
    // 2nd way
    // if we to implemet Provider only one widget
    return Scaffold(
      appBar: AppBar(
          // title: Text(provider.temp),
          ),
    );
  }
}
