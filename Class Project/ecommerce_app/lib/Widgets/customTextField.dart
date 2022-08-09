// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final IconData data;
  final String hintText;
  bool isObsecure = true;

  CustomTextField(
      {Key? key,
      required this.controller,
      required this.data,
      required this.hintText,
      required this.isObsecure})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(10),
      child: TextFormField(
        controller: controller,
        obscureText: isObsecure,
        cursorColor: Theme.of(context).primaryColor,
        decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(
              data,
              color: Colors.blue,
            ),
            focusColor: Theme.of(context).primaryColor,
            hintText: hintText),
      ),
    );
  }
}
