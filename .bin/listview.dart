import 'package:flutter/material.dart';

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
        useMaterial3: true,
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  static const List<String> myList = [
    'Book',
    'Note',
    'Pen',
    'Notebook',
    'Pencil',
    'Book',
    'Note',
    'Pen',
    'Notebook',
    'Pencil',
    'Book',
    'Note',
    'Pen',
    'Notebook',
    'Pencil',
    'Book',
    'Note',
    'Pen',
    'Notebook',
    'Pencil'
  ];
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lesson 16"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(myList[index]),
            ),
          );
        },
        itemCount: myList.length,
      ),
    );
  }
}
