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
        // primaryColor: Colors.green,
        // fontFamily: 'Roboto',
        // textTheme: const TextTheme(
        //   displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
        //   titleLarge: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
        //   bodyMedium: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        // ),
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.teal,
          leading: const Icon(Icons.music_note),
          title: const Text("Inomjon domla ma'ruzalari"),
          titleSpacing: 0,
        ),
        body: SafeArea(
            child: Row(
          // mainAxisSize: MainAxisSize.max,
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // margin: const EdgeInsets.fromLTRB(150.0, 20.0, 0.0, 0),
              // padding: const EdgeInsets.fromLTRB(20.0, 30.0, 0, 0),
              // alignment: Alignment.center,
              height: 100.0,
              width: 100.0,
              color: Colors.yellow,
              child: const Text(
                "Container 1",
                // textAlign: TextAlign.center,
              ),
            ),
            Container(
              // margin: const EdgeInsets.fromLTRB(150.0, 20.0, 0.0, 0),
              // padding: const EdgeInsets.fromLTRB(20.0, 30.0, 0, 0),
              // alignment: Alignment.center,
              height: 100.0,
              width: 100.0,
              color: Colors.green,
              child: const Text(
                "Container 2",
                // textAlign: TextAlign.center,
              ),
            ),
            Container(
              // margin: const EdgeInsets.fromLTRB(150.0, 20.0, 0.0, 0),
              // padding: const EdgeInsets.fromLTRB(20.0, 30.0, 0, 0),
              // alignment: Alignment.center,
              height: 100.0,
              width: 100.0,
              color: Colors.brown,
              child: const Text(
                "Container 2",
                // textAlign: TextAlign.center,
              ),
            ),
          ],
        )),
      ),
    );
  }
}
