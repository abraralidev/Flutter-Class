// ignore_for_file: library_private_types_in_public_api, unused_field, non_constant_identifier_names, unused_local_variable, prefer_final_fields, avoid_types_as_parameter_names

import 'package:ecommerce_app/Admin/adminLogin.dart';

import 'package:ecommerce_app/Store/storehome.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../Widgets/customTextField.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailTextEditingController =
      TextEditingController();
  final TextEditingController _passwordTextEditingController =
      TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              'images/login.png',
              width: 240,
              height: 240,
            ),
          ),
          Form(
              key: _formKey,
              child: Column(
                children: [
                  CustomTextField(
                      controller: _emailTextEditingController,
                      data: Icons.mail_outline,
                      hintText: "Email",
                      isObsecure: false),
                  CustomTextField(
                      controller: _passwordTextEditingController,
                      data: Icons.password_outlined,
                      hintText: "Password",
                      isObsecure: true),
                ],
              )),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              signIn(_emailTextEditingController.text,
                  _passwordTextEditingController.text);
            },
            child: const Text(
              "Log In",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          // ignore: deprecated_member_use
          FlatButton.icon(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AdminSignInPage()));
              },
              icon: const Icon(Icons.nature_people),
              label: const Text(
                "I'm Admin",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }

  // FirebaseAuth _auth = FirebaseAuth.instance;
  // loginUser() async {
  //   showDialog(
  //       context: context,
  //       builder: (c) {
  //         return const CircularProgressIndicator();
  //       });
  //   User? FirebaseUser;
  //   await _auth
  //       .signInWithEmailAndPassword(
  //           email: _emailTextEditingController.text.trim(),
  //           password: _passwordTextEditingController.text.trim())
  //       .then((AuthUser) {
  //     FirebaseUser = AuthUser.user;
  //   }).onError((error, stackTrace) {
  //     Navigator.pop(context);
  //     showDialog(
  //         context: context,
  //         builder: (c) {
  //           return ErrorAlertDialog(message: error.toString());
  //         });
  //   });
  //   if (FirebaseUser != null) {
  //     readdata(FirebaseUser);
  //   }
  FirebaseAuth _auth = FirebaseAuth.instance;
  void signIn(String email, String password) async {
    if (_formKey.currentState!.validate()) {
      _auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((uid) => {
                Fluttertoast.showToast(msg: "Login Successful"),
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const StoreHome(),
                  ),
                ),
              })
          .catchError((e) {
        Fluttertoast.showToast(msg: e!.message);
      });
    }
  }
}
