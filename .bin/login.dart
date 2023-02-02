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
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('assets/user.png'),
                radius: 60,
              ),
              Container(
                margin: const EdgeInsets.only(top: 20.0),
                child: const Text(
                  'Otabek Sadiridinov',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Great Vibes',
                    fontSize: 40.0,
                  ),
                ),
              ),
              const Text(
                'Flutter developer',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              const SizedBox(
                height: 20.0,
                width: 120.0,
                child: Divider(color: Colors.tealAccent),
              ),
              Card(
                margin: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: const <Widget>[
                      Icon(
                        Icons.phone,
                        color: Colors.teal,
                      ),
                      SizedBox(width: 20.0),
                      Text(
                        "+998 90 554 15 74",
                        style: TextStyle(color: Colors.teal, fontSize: 18.0),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                margin: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: const <Widget>[
                      Icon(
                        Icons.mail,
                        color: Colors.teal,
                      ),
                      SizedBox(width: 20.0),
                      Text(
                        "sadiridinovotabek@gmai.com",
                        style: TextStyle(color: Colors.teal, fontSize: 18.0),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
