import 'package:aaryaa/Contacts.dart';
import 'package:aaryaa/Location.dart';
import 'package:aaryaa/Voice.dart';
import 'package:aaryaa/add_contacts.dart';
import 'package:aaryaa/cameraPage.dart';
import 'package:aaryaa/sms.dart';
import 'package:flutter/material.dart';
import 'FeaturesPage.dart';
import 'Video.dart';



class FeaturesTab extends StatefulWidget {
  const FeaturesTab({Key? key}) : super(key: key);

  @override
  _FeaturesTabState createState() => _FeaturesTabState();
}

class _FeaturesTabState extends State<FeaturesTab> {
  int selectedPage = 0;

  final _pageOptions = [
    FeaturesPage(),
    Camera(),
    Video(),
    Voice(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptions[selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        //backgroundColor: Colors.blue,
          onTap: (index){
            setState(() {
              selectedPage = index;
            });
          }, // new
        currentIndex: selectedPage, // new
        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Features'),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            title: Text('Camera'),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.video_call),
            title: Text('Video'),
          ),
          new BottomNavigationBarItem(
              icon: Icon(Icons.keyboard_voice),
              title: Text('Voice')
          )
        ],
        selectedItemColor: Color(0xffbe3a5a),
        elevation: 5.0,
        //unselectedItemColor: Colors.green[900],

      ),
    );
  }
}
