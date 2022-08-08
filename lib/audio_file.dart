import 'dart:convert';
import 'package:audioplayers/audioplayers.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AudioFile extends StatefulWidget {
  final AudioPlayer advancedPlayer;
  const AudioFile({Key? key, required this.advancedPlayer}) : super(key: key);

  @override
  State<AudioFile> createState() => _AudioFileState();
}

class _AudioFileState extends State<AudioFile> {
  Duration _duration = new Duration();
  Duration _position = new Duration();
  // final String path =
  //     'https://soundcloud.com/allmusicen/otis-mcdonald-not-for-nothing?utm_source=clipboard&utm_medium=text&utm_campaign=social_sharing';
  final String path = "sound/myMusic.mp3";
  bool isPlaying = false;
  bool isPaused = false;
  bool isLooping = false;
  final List<IconData> _icons = [
    Icons.play_circle_fill,
    Icons.pause_circle_filled,
  ];

  @override
  void initState() {
    super.initState();
    this.widget.advancedPlayer.onDurationChanged.listen((d) {
      setState(() {
        _duration = d;
      });
    });
    this.widget.advancedPlayer.onPositionChanged.listen((p) {
      setState(() {
        _position = p;
      });
    });

    this.widget.advancedPlayer.setSourceAsset(path);
  }

  Widget btnStart() {
    return IconButton(
      padding: EdgeInsets.only(bottom: 10),
      icon: Icon(_icons[0]),
      onPressed: () {
        this.widget.advancedPlayer.play(UrlSource(path));
      },
    );
  }

  Widget loadAsset() {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          btnStart(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [],
            ),
          ),
          loadAsset(),
        ],
      ),
    );
  }
}
