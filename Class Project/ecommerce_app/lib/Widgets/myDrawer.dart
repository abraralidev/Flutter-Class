// ignore_for_file: file_names, sized_box_for_whitespace

import 'package:ecommerce_app/Authentication/authenication.dart';
import 'package:ecommerce_app/Config/config.dart';
import 'package:ecommerce_app/Orders/myOrders.dart';
import 'package:ecommerce_app/Store/Search.dart';
import 'package:ecommerce_app/Store/cart.dart';
import 'package:ecommerce_app/Store/storehome.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        padding: const EdgeInsets.only(top: 25, bottom: 10),
        color: const Color.fromARGB(255, 240, 240, 240),
        child: Column(
          children: [
            Material(
              borderRadius: const BorderRadius.all(Radius.circular(80)),
              elevation: 8,
              child: Container(
                height: 160,
                width: 160,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(EcommerceApp.sharedPreferences!
                      .getString(EcommerceApp.userAvatarUrl)
                      .toString()),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              EcommerceApp.sharedPreferences!
                  .getString(EcommerceApp.userName)
                  .toString(),
              style: const TextStyle(
                  fontSize: 35, color: Colors.blue, fontFamily: 'Signatra'),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              padding: const EdgeInsets.only(top: 3),
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(
                      Icons.home_outlined,
                      color: Colors.blue,
                    ),
                    title: const Text(
                      "Home",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      Route route =
                          MaterialPageRoute(builder: (_) => const StoreHome());
                      Navigator.pushReplacement(context, route);
                    },
                  ),
                  const Divider(
                    height: 10,
                    color: Colors.blue,
                    thickness: 6,
                    endIndent: 15,
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.home_outlined,
                      color: Colors.blue,
                    ),
                    title: const Text(
                      "My Orders",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      Route route =
                          MaterialPageRoute(builder: (_) => const MyOrders());
                      Navigator.pushReplacement(context, route);
                    },
                  ),
                  const Divider(
                    height: 10,
                    color: Colors.blue,
                    thickness: 6,
                    endIndent: 15,
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.home_outlined,
                      color: Colors.blue,
                    ),
                    title: const Text(
                      "My Cart",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      Route route =
                          MaterialPageRoute(builder: (_) => const CartPage());
                      Navigator.pushReplacement(context, route);
                    },
                  ),
                  const Divider(
                    height: 10,
                    color: Colors.blue,
                    thickness: 6,
                    endIndent: 15,
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.home_outlined,
                      color: Colors.blue,
                    ),
                    title: const Text(
                      "Search",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      Route route = MaterialPageRoute(
                          builder: (_) => const SearchProduct());
                      Navigator.pushReplacement(context, route);
                    },
                  ),
                  const Divider(
                    height: 10,
                    color: Colors.blue,
                    thickness: 6,
                    endIndent: 15,
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.home_outlined,
                      color: Colors.blue,
                    ),
                    title: const Text(
                      "Add New Address",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      Route route = MaterialPageRoute(
                          builder: (_) => const SearchProduct());
                      Navigator.pushReplacement(context, route);
                    },
                  ),
                  const Divider(
                    height: 10,
                    color: Colors.blue,
                    thickness: 6,
                    endIndent: 15,
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.home_outlined,
                      color: Colors.blue,
                    ),
                    title: const Text(
                      "Log Out",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      EcommerceApp.auth?.signOut().then((value) {
                        Route route = MaterialPageRoute(
                            builder: (_) => const AuthenticScreen());
                        Navigator.pushReplacement(context, route);
                      });
                    },
                  ),
                  const Divider(
                    height: 10,
                    color: Colors.blue,
                    thickness: 6,
                    endIndent: 15,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
