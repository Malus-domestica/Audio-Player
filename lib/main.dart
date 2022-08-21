import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:audio_player/myhomepage.dart';
import 'package:audio_player/drawer_to_screen.dart';
import 'package:audio_player/audio_file.dart';
import 'package:audio_player/mindfulness.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutteR Audio Reading',
      debugShowCheckedModeBanner: false,
      home: MindfulnessScreen(),
      // home: SreenDrawer(),
      // home: AudioPlayerAsset(
      //   path:
      //       'https://firebasestorage.googleapis.com/v0/b/audio-file-3a6ed.appspot.com/o/sandboxmusic.mp3?alt=media&token=df2ee08a-0f3d-44a3-953e-a3b45f44e42d',
      // ),
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      // routes: {'/': (context) => MyHomePage()},
    );
  }
}
