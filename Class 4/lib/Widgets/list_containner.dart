// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class listcontainer extends StatelessWidget {
  const listcontainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 100,
        color: Colors.amber,
        child: Row(
          children: [
            Column(
              children: [
                Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1638913660695-b490171d17c9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=872&q=80")),
                    ))
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 20,
              ),
              child: Text(
                "Data data data data data",
                style: TextStyle(fontSize: 25),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
