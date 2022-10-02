import 'package:flutter/material.dart';

class Containertry extends StatelessWidget {
  const Containertry({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                  flex: 2,
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    height: 100,
                    color: Colors.red,
                  )),
              Expanded(
                  child: Container(
                margin: const EdgeInsets.all(5),
                height: 100,
                color: Colors.red,
              )),
              Expanded(
                  child: Container(
                margin: const EdgeInsets.all(5),
                height: 100,
                color: Colors.red,
              )),
              Expanded(
                  child: Container(
                margin: const EdgeInsets.all(5),
                height: 100,
                color: Colors.red,
              )),
            ],
          ),
          Center(
            child: Container(
              width: 250,
              height: 250,
              // transform: Matrix4.rotationZ(0.1),
              decoration: BoxDecoration(
                color: const Color.fromARGB(221, 226, 226, 226),
                shape: BoxShape.circle,
                // borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black, width: 2),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black,
                      blurRadius: 40,
                      blurStyle: BlurStyle.normal)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
