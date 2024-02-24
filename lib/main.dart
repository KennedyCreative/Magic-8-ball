import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Magical8Ball(),
    ));

class Magical8Ball extends StatefulWidget {
  const Magical8Ball({super.key});

  @override
  State<Magical8Ball> createState() => _Magical8BallState();
}

class _Magical8BallState extends State<Magical8Ball> {
  int randonNumberInt = 1;
  void randonNumber() => setState(() {
        randonNumberInt = Random().nextInt(5) + 1;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Magical 8 ball'),
      ),
      body: SafeArea(
        child: Center(
          child: GestureDetector(
            onTap: randonNumber,
            child: Image.asset(
              'images/ball$randonNumberInt.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
