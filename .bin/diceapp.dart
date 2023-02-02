import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Asosiy sahifa',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Scaffold(
        backgroundColor: Colors.pinkAccent,
        appBar: AppBar(
          title: const Text("Dice game"),
        ),
        // body: SafeArea(child: Column()),
        body: const DiceApp(),
      ),
    );
  }
}

// const, final, dynamic, var, String, bool, int, double, void(for function)

class DiceApp extends StatefulWidget {
  const DiceApp({super.key});

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int leftImageNumber = Random().nextInt(6) + 1;
  int rightImageNumber = Random().nextInt(6) + 1;

  void changeDices() {
    setState(() {
      leftImageNumber = Random().nextInt(6) + 1; // 0-5 => 1-6
      rightImageNumber = Random().nextInt(6) + 1; // 0-5 => 1-6
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                changeDices();
              },
              child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.asset('assets/dice$leftImageNumber.png')),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                changeDices();
              },
              child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.asset('assets/dice$rightImageNumber.png')),
            ),
          ),
        ],
      ),
    );
  }
}
