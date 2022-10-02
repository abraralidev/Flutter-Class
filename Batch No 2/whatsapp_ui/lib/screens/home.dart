import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/calls/calls.dart';
import 'package:whatsapp_ui/screens/camera/camera.dart';
import 'package:whatsapp_ui/screens/chats/chats.dart';
import 'package:whatsapp_ui/screens/status/Status.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.chat),
        ),
        appBar: AppBar(
          title: const Text("Whatsapp"),
          bottom: const TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                iconMargin: EdgeInsets.only(right: 50),
                child: Icon(
                  Icons.camera_alt_rounded,
                  size: 20,
                ),
              ),
              Tab(
                text: "Chats",
              ),
              Tab(
                text: "Status",
              ),
              Tab(
                text: "Calls",
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
            PopupMenuButton(
                icon: const Icon(Icons.more_vert),
                itemBuilder: (_) => [
                      const PopupMenuItem(child: Text("New Group")),
                      const PopupMenuItem(child: Text("Linked Device")),
                      const PopupMenuItem(child: Text("Starerd Massages")),
                      const PopupMenuItem(child: Text("Settings")),
                    ])
          ],
        ),
        body: const TabBarView(children: [
          CameraScreen(),
          ChatsSCreen(),
          StatusScreen(),
          CallsScreen()
        ]),
      ),
    );
  }
}
// 