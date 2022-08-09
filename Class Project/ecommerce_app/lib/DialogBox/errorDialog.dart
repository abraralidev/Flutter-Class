// ignore_for_file: file_names

import 'package:ecommerce_app/Authentication/authenication.dart';
import 'package:flutter/material.dart';

class ErrorAlertDialog extends StatelessWidget {
  final String message;
  const ErrorAlertDialog({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      key: key,
      content: Text(message),
      actions: <Widget>[
        // ignore: deprecated_member_use
        RaisedButton(
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => const AuthenticScreen()));
          },
          color: Colors.red,
          child: const Center(
            child: Text("OK"),
          ),
        )
      ],
    );
  }
}
