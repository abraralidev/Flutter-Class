// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(),
      body: const columwidget(),
    );
  }
}

class columwidget extends StatelessWidget {
  const columwidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: const [
      newcards(
        Textdata: 'jbxjxs',
      ),
      newcards(
        Textdata: 'Data 2',
      ),
      newcards(
        Textdata: 'Data 3',
      ),
    ]);
  }
}

class newcards extends StatelessWidget {
  const newcards({
    Key? key,
    required this.Textdata,
  }) : super(key: key);
  final String Textdata;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.blue,
            child: Center(child: Text(Textdata)),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.blue,
          ),
          const Text(
            "Data",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
