// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';


class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}



class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context)
  {
    return const SafeArea(
      child: Scaffold(
      ),
    );
  }

}

const boldTextStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 20);
const largeTextStyle = TextStyle(fontWeight: FontWeight.normal, fontSize: 20);
