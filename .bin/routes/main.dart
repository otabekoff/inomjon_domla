import 'package:flutter/material.dart';
import 'package:inomjon_domla/details_screen.dart';
import 'package:inomjon_domla/home_screen.dart';

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
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: const HomePage(),
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (ctx) => const HomePage(),
        DetailsPage.routeName: (ctx) => const DetailsPage(),
      },
    );
  }
}

// const, final, dynamic, var, String, bool, int, double, void(for function)
