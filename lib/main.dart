import 'package:flutter/material.dart';
import 'package:audio_player/myhomepage.dart';
import 'package:audio_player/detail_audio__page.dart';
import 'package:audio_player/audio_file.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Audio Reading',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
