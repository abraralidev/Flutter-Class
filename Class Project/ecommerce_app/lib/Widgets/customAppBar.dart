// ignore_for_file: unnecessary_null_comparison, file_names

import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  final PreferredSizeWidget bottom;
  MyAppBar({Key? key, required this.bottom}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  @override
  Size get preferredSize => bottom == null
      ? Size(56, AppBar().preferredSize.height)
      : Size(56, 80 + AppBar().preferredSize.height);
}
