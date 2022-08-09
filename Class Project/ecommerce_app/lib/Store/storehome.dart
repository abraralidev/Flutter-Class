// ignore_for_file: library_private_types_in_public_api, avoid_types_as_parameter_names, non_constant_identifier_names

import 'package:ecommerce_app/Counters/cartitemcounter.dart';
import 'package:ecommerce_app/Store/cart.dart';
import 'package:ecommerce_app/Widgets/myDrawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Models/item.dart';

class StoreHome extends StatefulWidget {
  const StoreHome({Key? key}) : super(key: key);

  @override
  _StoreHomeState createState() => _StoreHomeState();
}

class _StoreHomeState extends State<StoreHome> {
  double? width;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Center(
            child: Text(
              "Ebuy",
              style: TextStyle(
                  color: Colors.blue, fontFamily: 'Signatra', fontSize: 40),
            ),
          ),
          actions: [
            Stack(
              children: [
                IconButton(
                    onPressed: () {
                      Route route =
                          MaterialPageRoute(builder: (_) => const CartPage());
                      Navigator.pushReplacement(context, route);
                    },
                    icon: const Icon(
                      Icons.shopping_cart,
                      color: Colors.blue,
                    )),
                Positioned(
                  child: Stack(
                    children: [
                      const Icon(
                        Icons.brightness_1,
                        color: Color.fromARGB(255, 2, 64, 114),
                        size: 20,
                      ),
                      Positioned(
                          top: 3,
                          bottom: 4,
                          child: Consumer<CartItemCounter>(
                            builder: (context, Counter, _) {
                              return Text(Counter.count.toString());
                            },
                          ))
                    ],
                  ),
                ),
              ],
            )
          ],
          iconTheme: const IconThemeData(color: Colors.blue),
        ),
        drawer: const MyDrawer(),
      ),
    );
  }
}

Widget sourceInfo(ItemModel model, BuildContext context,
    {Color? background, removeCartFunction}) {
  return const InkWell();
}

Widget card({Color primaryColor = Colors.redAccent, String? imgPath}) {
  return Container();
}

void checkItemInCart(String productID, BuildContext context) {}
