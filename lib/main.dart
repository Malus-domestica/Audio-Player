import 'package:flutter/material.dart';
import 'package:audio_player/myhomepage.dart';
import 'package:audio_player/drawer_to_screen.dart';

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
      // home: SreenDrawer(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {'/': (context) => MyHomePage()},
    );
  }
}
