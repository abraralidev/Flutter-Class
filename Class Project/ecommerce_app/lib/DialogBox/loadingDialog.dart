
// ignore_for_file: file_names

import 'package:ecommerce_app/Widgets/loadingWidget.dart';
import 'package:flutter/material.dart';

class LoadingAlertDialog extends StatelessWidget
{
  final String message;
  const LoadingAlertDialog({Key ?key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return AlertDialog(
      key: key,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          circularProgress(),
          const SizedBox(
            height: 10,
          ),
          const Text('Authenticating, Please wait.....'),
        ],
      ),
    );
  }
}
