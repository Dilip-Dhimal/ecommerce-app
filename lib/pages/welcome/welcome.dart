import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Text("Widget one"),
            bottom: 100,
            left: 20,
          ),
          Positioned(
            child: Text("Widget one"),
            bottom: 100,
            left: 250,
          ),
        ],
      ),
    );
  }
}
