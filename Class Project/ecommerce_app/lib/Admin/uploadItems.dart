// ignore_for_file: must_call_super, library_private_types_in_public_api, file_names

import 'package:flutter/material.dart';


class UploadPage extends StatefulWidget
{
  const UploadPage({Key? key}) : super(key: key);

  @override
  _UploadPageState createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> with AutomaticKeepAliveClientMixin<UploadPage>
{
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return const Text("");
  }
}
