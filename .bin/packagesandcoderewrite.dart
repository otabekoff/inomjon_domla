import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  void playSoundFromPath(String songPath) {
    final player = AudioPlayer();
    player.play(AssetSource(songPath));
    // player.pause();
    // player.stop();
  }

  Expanded drawButton(
      {required Color color,
      required int soundNumber,
      required String songPath}) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          playSoundFromPath(songPath);
        },
        child: Container(
          alignment: Alignment.center,
          color: color,
          width: 100.0,
          height: 100.0,
          child: Text(
            soundNumber.toString(),
            style: const TextStyle(color: Colors.white, fontSize: 72),
          ),
        ),
      ),
    );
  }

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Asosiy sahifa',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        // body: SafeArea(child: Column()),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    drawButton(
                        color: Colors.black,
                        soundNumber: 0,
                        songPath: "number_0.wav"),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    drawButton(
                        color: Colors.blue,
                        soundNumber: 1,
                        songPath: "number_1.wav"),
                    drawButton(
                        color: Colors.amber,
                        soundNumber: 2,
                        songPath: "number_2.wav"),
                    drawButton(
                        color: Colors.green,
                        soundNumber: 3,
                        songPath: "number_3.wav"),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    drawButton(
                        color: Colors.blue,
                        soundNumber: 4,
                        songPath: "number_4.wav"),
                    drawButton(
                        color: Colors.amber,
                        soundNumber: 5,
                        songPath: "number_5.wav"),
                    drawButton(
                        color: Colors.green,
                        soundNumber: 6,
                        songPath: "number_6.wav"),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    drawButton(
                        color: Colors.blue,
                        soundNumber: 7,
                        songPath: "number_7.wav"),
                    drawButton(
                        color: Colors.amber,
                        soundNumber: 8,
                        songPath: "number_8.wav"),
                    drawButton(
                        color: Colors.green,
                        soundNumber: 9,
                        songPath: "number_9.wav"),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    drawButton(
                        color: Colors.red,
                        soundNumber: 10,
                        songPath: "number_10.wav"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// const, final, dynamic, var, String, bool, int, double, void(for function)
