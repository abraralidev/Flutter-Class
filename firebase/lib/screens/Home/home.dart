import 'package:flutter/material.dart';
import 'package:luckydraw/screens/LuckyDraw/luckydraw.dart';
import 'package:luckydraw/screens/tvscreen/tv.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const VideoPlayerScreen()));
                },
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: const BoxDecoration(
                      image:
                          DecorationImage(image: AssetImage('assets/tv.png'))),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>  const LuckyDraw()));
                },
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/lottery.png'))),
                ),
              ),
            ),
          ]),
    );
  }
}
