// ignore_for_file: library_private_types_in_public_api, avoid_unnecessary_containers, unused_field

import 'package:ecommerce_app/Authentication/login.dart';
import 'package:ecommerce_app/Authentication/register.dart';
import 'package:flutter/material.dart';

class AuthenticScreen extends StatefulWidget {
  const AuthenticScreen({Key? key}) : super(key: key);

  @override
  _AuthenticScreenState createState() => _AuthenticScreenState();
}

class _AuthenticScreenState extends State<AuthenticScreen>
    with TickerProviderStateMixin {
  TabController? _tabcontroller;
  @override
  void initState() {
    super.initState();
    _tabcontroller = TabController(length: 2, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            bottom: TabBar(
              indicatorWeight: 3,
              labelColor: Colors.blue,
              indicatorColor: Colors.blue,
              labelStyle:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              controller: _tabcontroller,
              tabs: const [
                Tab(
                  iconMargin: EdgeInsets.all(12),
                  text: "Login",
                ),
                Tab(
                  iconMargin: EdgeInsets.all(12),
                  text: "Register",
                ),
              ],
            )),
        body: Container(
          child: TabBarView(
              controller: _tabcontroller,
              children: const [Login(), Register()]),
        ));
  }
}
