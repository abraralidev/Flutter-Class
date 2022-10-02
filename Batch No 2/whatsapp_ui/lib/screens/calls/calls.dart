import 'package:flutter/material.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 50,
        itemBuilder: (context, index) => ListTile(
              leading: const CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1664566486105-e12113484784?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80"),
              ),
              title: const Text("FlutterByAbrar"),
              subtitle: Row(
                children: const [
                  Icon(
                    Icons.done,
                    size: 20,
                    color: Colors.green,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text("Missed Call"),
                ],
              ),
              trailing: const Icon(Icons.call),
            ));
  }
}
