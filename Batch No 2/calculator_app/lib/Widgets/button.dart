// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class CalButtons extends StatelessWidget {
  const CalButtons({
    Key? key,
    required this.buttonText,
    required this.buttoncolor, required this.onpress,
  }) : super(key: key);
  final String buttonText;
  final Color buttoncolor;
  final Function() onpress;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onpress,
        child: Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(color: buttoncolor, shape: BoxShape.circle),
          child: Center(
            child: Text(
              buttonText,
              style: const TextStyle(fontSize: 25, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
