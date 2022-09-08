import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Expanded(
            child: Row(
          children: [
            Expanded(
                child: Container(
              margin: const EdgeInsets.all(12),
              color: Colors.black54,
              child: Column(children: const [Text("Data")]),
            )),
            Expanded(
                child: Container(
              margin: const EdgeInsets.all(12),
              color: Colors.black54,
            )),
          ],
        )),
        // Expanded(
        //     child: Row(
        //   children: [
        //     Expanded(
        //         child: Container(
        //       margin: const EdgeInsets.all(12),
        //       color: Colors.black54,
        //     )),
        //   ],
        // )),
        // Expanded(
        //     child: Row(
        //   children: [
        //     Expanded(
        //         child: Container(
        //       margin: const EdgeInsets.all(12),
        //       color: Colors.black54,
        //     )),
        //     Expanded(
        //         child: Container(
        //       margin: const EdgeInsets.all(12),
        //       color: Colors.black54,
        //     )),
        //   ],
        // ))

        // Stack(
        //   children: [
        //     Container(
        //       width: 300,
        //       height: 300,
        //       color: Colors.black26,
        //     ),
        //     Container(
        //       width: 200,
        //       height: 200,
        //       color: Colors.black45,
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Container(
        //         width: 100,
        //         height: 100,
        //         decoration: BoxDecoration(
        //             borderRadius: BorderRadius.circular(10),
        //             color: Colors.black54,
        //             image: const DecorationImage(
        //                 fit: BoxFit.cover,
        //                 image: NetworkImage(
        //                     "https://images.unsplash.com/photo-1662425877955-1092c2e1309e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80"))),
        //       ),
        //     ),
        //   ],
        // ),
        // const SizedBox(
        //   height: 10,
        // ),
        // Stack(
        //   children: [
        //     Container(
        //       width: 300,
        //       height: 300,
        //       color: Colors.black26,
        //     ),
        //     Container(
        //       width: 200,
        //       height: 200,
        //       color: Colors.black45,
        //     ),
        //     Container(
        //       width: 100,
        //       height: 100,
        //       color: Colors.black54,
        //     ),
        //   ],
        // )
        // Row(
        //   children: [
        //     Container(
        //       width: 100,
        //       height: 100,
        //       color: Colors.black26,
        //     ),
        //     Container(
        //       width: 100,
        //       height: 100,
        //       color: Colors.black45,
        //     ),
        //     Container(
        //       width: 100,
        //       height: 100,
        //       color: Colors.black54,
        //     ),
        //   ],
        // ),
        // Container(
        //   width: 100,
        //   height: 100,
        //   color: Colors.black26,
        // ),
        // Container(
        //   width: 100,
        //   height: 100,
        //   color: Colors.black45,
        // ),
        // Container(
        //   width: 100,
        //   height: 100,
        //   color: Colors.black54,
        // ),
      ]),
    );
  }
}
