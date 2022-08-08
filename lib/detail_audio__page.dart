import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:audio_player/app_colors.dart' as AppColors;

import 'package:audio_player/audio_file.dart';

class DetailAudioPage extends StatefulWidget {
  const DetailAudioPage({Key? key}) : super(key: key);

  @override
  State<DetailAudioPage> createState() => _DetailAudioPageState();
}

class _DetailAudioPageState extends State<DetailAudioPage> {
  late AudioPlayer advancedPlayer;

  @override
  void initState() {
    super.initState();
    advancedPlayer = AudioPlayer();
  }

  @override
  Widget build(BuildContext context) {
    final double screenheight = MediaQuery.of(context).size.height;
    final double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.audioBluishBackground,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: screenheight / 3,
            child: Container(
              color: AppColors.audioBlueBackground,
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {},
              ),
              actions: [
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
              ],
              backgroundColor: Colors.transparent,
              elevation: 0.0,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: screenheight * 0.2,
            height: screenheight * 0.36,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: screenheight * 0.1,
                  ),
                  Text(
                    "The Water Cure",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Avenir",
                    ),
                  ),
                  Text(
                    "Martin Hyatt",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  AudioFile(
                    advancedPlayer: advancedPlayer,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: screenheight * 0.1,
            left: (screenwidth - 150) / 2,
            right: (screenwidth - 150) / 2,
            height: screenheight * 0.2,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.white, width: 2),
                color: AppColors.audioGreyBackground,
              ),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 5),
                    image: DecorationImage(
                      image: AssetImage("images/img8.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
