// ignore_for_file: library_private_types_in_public_api

import 'package:ecommerce_app/Store/storehome.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        ElevatedButton(
            onPressed: () {
              Route route =
                  MaterialPageRoute(builder: (_) => const StoreHome());
              Navigator.pushReplacement(context, route);
            },
            child: const Text('Back'))
      ]),
    );
  }
}
