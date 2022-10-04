import 'package:flutter/material.dart';

class ReusedCard extends StatelessWidget {
  const ReusedCard({super.key, required this.childcard});

  final Widget childcard;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(10)),
        child: childcard,
      ),
    );
  }
}
