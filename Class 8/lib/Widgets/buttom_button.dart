// ignore_for_file: camel_case_types

import 'package:class8/Data/constant.dart';
import 'package:flutter/material.dart';

class Buttom_Button extends StatelessWidget {
  const Buttom_Button({
    Key? key,
    required this.buttontext, required this.onpress,
  }) : super(key: key);
  final String buttontext;
  final Function() onpress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        margin: const EdgeInsets.all(20),
        width: double.infinity,
        height: kBottomcontainerheight,
        decoration: BoxDecoration(
            color: kBottomcolor, borderRadius: BorderRadius.circular(10)),
        child: Center(
            child: Text(
          buttontext,
          style: Kbottombutton,
        )),
      ),
    );
  }
}
