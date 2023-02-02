import 'package:flutter/material.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrieÏntations(
  //     [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
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
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isSwitched = true;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;
    final isPortrait =
        MediaQuery
            .of(context)
            .orientation == Orientation.portrait;
    return Scaffold(
      appBar: AppBar(
        title: const Text('App'),
      ),
      body: isPortrait
          ? Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Switch(
                  value: _isSwitched,
                  onChanged: (value) {
                    setState(() {
                      _isSwitched = value;
                    });
                  }),
            ],
          ),
          Container(
            height: size.height * 0.5,
            color: Colors.greenAccent,
            margin: const EdgeInsets.all(20),
          ),
          Container(
            height: size.height * 0.2,
            color: Colors.greenAccent,
            margin: const EdgeInsets.all(20),
          )
        ],
      )
          : Row(
        children: [
          Container(
            width: 300,
            color: Colors.red,
          ),
          Container(
            width: 300,
            color: Colors.purple,
          ),
        ],
      ),
    );
  }
}

// const, final, dynamic, var, String, bool, int, double, void(for function)
