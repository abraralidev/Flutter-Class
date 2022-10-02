import 'package:flutter/material.dart';

class ChatsSCreen extends StatelessWidget {
  const ChatsSCreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 50,
        itemBuilder: (context, index) => const ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1664566486105-e12113484784?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80"),
              ),
              title: Text("FlutterByAbrar"),
              subtitle: Text("Welcome to my page"),
              trailing: Text("12:48 AM"),
            ));
  }
}
