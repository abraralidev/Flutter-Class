// ignore_for_file: file_names

import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 50,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Column(
              children: [
                ListTile(
                  leading: Stack(
                    children: const [
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 25,
                        backgroundImage: NetworkImage(
                            "https://images.unsplash.com/photo-1664566486105-e12113484784?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80"),
                      ),
                      Positioned(
                        top: 27,
                        left: 27,
                        child: CircleAvatar(
                            radius: 12,
                            child: Center(
                              child: Icon(Icons.add),
                            )
                            // backgroundImage: NetworkImage(
                            //     "https://images.unsplash.com/photo-1664566486105-e12113484784?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80"),
                            ),
                      ),
                    ],
                  ),
                  title: const Text("My Status"),
                  subtitle: const Text("Tap to add status update"),
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Recent updates",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.green, width: 3)),
                    child: const CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1664566486105-e12113484784?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80"),
                    ),
                  ),
                  title: const Text("FlutterByAbrar"),
                  subtitle: const Text("12 minutes ago"),
                ),
              ],
            );
          } else {
            return ListTile(
              leading: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.green, width: 3)),
                child: const CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1664566486105-e12113484784?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80"),
                ),
              ),
              title: const Text("FlutterByAbrar"),
              subtitle: const Text("12 minutes ago"),
            );
          }
        });
  }
}
