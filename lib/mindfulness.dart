import 'package:flutter/material.dart';
import 'package:audio_player/audio_file.dart';
import 'package:audio_player/app_colors.dart' as AppColors;
import 'package:audio_player/data.dart' as Data;

class MindfulnessScreen extends StatefulWidget {
  const MindfulnessScreen({Key? key}) : super(key: key);

  @override
  State<MindfulnessScreen> createState() => _MindfulnessScreenState();
}

class _MindfulnessScreenState extends State<MindfulnessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Mindfulness',
          style: TextStyle(
            fontSize: 30,
            color: Color(0xFF000000),
          ),
        ),
        iconTheme: IconThemeData(color: Color(0xFF000000)),
        backgroundColor: Color(0xFFfafafa),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width / 2,
            child: Container(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 3,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'What is Mindfulness?',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Mindfulness is the basic human \nability to be fully present,\naware of where we are \nand what we are doing,\nand not overly reactive or \noverwhelmed by what is going \non around us.',
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/mindfulnessimg.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          ListView.builder(
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                    leading: const Icon(Icons.list),
                    trailing: const Text(
                      "GFG",
                      style: TextStyle(color: Colors.green, fontSize: 15),
                    ),
                    title: Text("List item $index"));
              }),
        ],
      )),
    );
  }
}
