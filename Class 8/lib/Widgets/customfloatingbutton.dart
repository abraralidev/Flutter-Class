// ignore_for_file: camel_case_types

import 'package:class8/Data/constant.dart';
import 'package:flutter/material.dart';

class Action_Button extends StatelessWidget {
  const Action_Button({Key? key, required this.onpress, required this.icon})
      : super(key: key);
  final Function() onpress;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: kInActiveCardcolor,
      onPressed: onpress,
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
