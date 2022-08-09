// ignore_for_file: library_private_types_in_public_api, unused_field, unnecessary_null_comparison, avoid_unnecessary_containers, unused_element, deprecated_member_use, unused_local_variable, avoid_print, non_constant_identifier_names, prefer_final_fields, await_only_futures
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app/Config/config.dart';
import 'package:ecommerce_app/DialogBox/errorDialog.dart';
import 'package:ecommerce_app/DialogBox/loadingDialog.dart';
import 'package:ecommerce_app/Store/storehome.dart';
import 'package:ecommerce_app/Widgets/customTextField.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController _nameTextEditingController =
      TextEditingController();
  final TextEditingController _emailTextEditingController =
      TextEditingController();
  final TextEditingController _passwordTextEditingController =
      TextEditingController();
  final TextEditingController _cpasswordTextEditingController =
      TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String userImageUrl = '';
  File? _imagefile;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                _getFromGallery();
                UploadtoStorage();
              },
              child: CircleAvatar(
                radius: 40,
                backgroundColor: const Color.fromARGB(255, 209, 208, 208),
                backgroundImage:
                    _imagefile == null ? null : FileImage(_imagefile!),
                child: _imagefile == null
                    ? const Icon(
                        Icons.add_photo_alternate,
                        size: 30,
                        color: Colors.grey,
                      )
                    : null,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Form(
                key: _formKey,
                child: Column(
                  children: [
                    CustomTextField(
                        controller: _nameTextEditingController,
                        data: Icons.person_outline,
                        hintText: "Full Name",
                        isObsecure: false),
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
                    CustomTextField(
                        controller: _cpasswordTextEditingController,
                        data: Icons.password_outlined,
                        hintText: "Confirm Password",
                        isObsecure: true),
                  ],
                )),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                registerUser();
              },
              child: const Text(
                "Sign Up",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }

// Function for select and pick image from user

  /// Get from gallery
  Future<void> _getFromGallery() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      File imageFile = File(pickedFile.path);
      print(pickedFile);
    }
  }

  DisplayDialog(String msg) {
    showDialog(
        context: context,
        builder: (c) {
          return ErrorAlertDialog(message: msg);
        });
  }

  Future saveUserInfoFirestore(User FirebaseUser) async {
    FirebaseFirestore.instance.collection("users").doc(FirebaseUser.uid).set({
      "uid": FirebaseUser.uid,
      "email": FirebaseUser.email,
      "name": _nameTextEditingController.text.trim(),
      "url": userImageUrl,
    });
    await EcommerceApp.sharedPreferences!.setString('uid', FirebaseUser.uid);
    await EcommerceApp.sharedPreferences!
        .setString(EcommerceApp.userEmail, FirebaseUser.email.toString());
    await EcommerceApp.sharedPreferences!.setString(
      EcommerceApp.userName,
      _nameTextEditingController.text.trim(),
    );
    await EcommerceApp.sharedPreferences!
        .setString(EcommerceApp.userAvatarUrl, userImageUrl);
    await EcommerceApp.sharedPreferences!
        .setStringList(EcommerceApp.userCartList, ['garbageValue']);
  }

  FirebaseAuth _auth = FirebaseAuth.instance;
  void registerUser() async {
    User? firebaseUser;
    await _auth
        .createUserWithEmailAndPassword(
            email: _emailTextEditingController.text.trim(),
            password: _passwordTextEditingController.text.trim())
        .then((auth) {
      firebaseUser = auth.user;
    }).onError((error, stackTrace) {
      Navigator.pop(context);
      showDialog(
          context: context,
          builder: (c) {
            return ErrorAlertDialog(message: error.toString());
          });
    });
    if (firebaseUser != null) {
      saveUserInfoFirestore(firebaseUser!).then((value) {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const StoreHome()));
      });
    }
  }

  UploadtoStorage() async {
    showDialog(
        context: context,
        builder: (c) {
          return const LoadingAlertDialog(message: 'Auth, Please Wait....');
        });
    String imageFilename = DateTime.now().millisecondsSinceEpoch.toString();
    final storageReference =
        FirebaseStorage.instance.ref().child(imageFilename);
    UploadTask storageUploadTask = storageReference.putFile(_imagefile!);
    TaskSnapshot taskSnapshot =
        await storageUploadTask.whenComplete(() => null);
    await taskSnapshot.ref.getDownloadURL().then((urlImage) {
      userImageUrl = urlImage;
      registerUser();
    });
  }

  Future<void> UploadAndSave() async {
    if (_imagefile == null) {
      showDialog(
          context: context,
          builder: (c) {
            return const ErrorAlertDialog(
                message: "Please Select a Image File");
          });
    } else {
      _passwordTextEditingController.text ==
              _cpasswordTextEditingController.text
          ? _emailTextEditingController.text.isNotEmpty &&
                  _passwordTextEditingController.text.isNotEmpty &&
                  _cpasswordTextEditingController.text.isNotEmpty &&
                  _nameTextEditingController.text.isNotEmpty
              ? UploadAndSave()
              : DisplayDialog('Please Fill the Form')
          : DisplayDialog('Password does not match ');
    }
  }
}
