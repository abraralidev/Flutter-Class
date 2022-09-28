import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //1
      body: CustomScrollView(
        slivers: [
          //2
          SliverAppBar(
            elevation: 5,
            pinned: true,
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('Goa', textScaleFactor: 1),
              background: Image.network(
                'https://images.unsplash.com/photo-1664386047649-3fa3527a5cd5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
                fit: BoxFit.fill,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (_, int index) {
                return ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        color: Colors.blueAccent,
                        padding: const EdgeInsets.all(8),
                        width: 100,
                        child: const Placeholder()),
                  ),
                  title: Text('Place ${index + 1}', textScaleFactor: 2),
                );
              },
              childCount: 40,
            ),
          ),
        ],
      ),
    );
  }
}
