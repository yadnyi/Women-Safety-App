import 'package:flutter/material.dart';
import 'package:expand_widget/expand_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'Call.dart';

class HomePage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return ListItemWidget();
  }
}

class ListItemWidget extends State<HomePage> {
  //final ScrollController _scrollController = ScrollController();
  final Call call = new Call();
  static String videoId = 'KVpxP3ZZtAc';
  late String video_2, video_3;

  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: videoId,
    flags: YoutubePlayerFlags(
      autoPlay: true,
      mute: false,
    ),
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(8),
        children: <Widget>[
          Card(
            color: Colors.white,
            elevation: 5,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 3),
                borderRadius: BorderRadius.circular(7),
              ),
              child: Center(
                child: Image.asset('logo.png'),
              ),
            ),
          ),
          SizedBox(height: 15),
          Card(
            elevation: 5,
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('BE AWARE OF WOMEN ABUSE ',
                        style: Theme.of(context).textTheme.headline6),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ExpandText(
                      'Aaryaa is here to help and guide you. Register your emergency contacts and will notify them in the situation. We are trying to build society where women can feel safe. So start from yourself and take extra efforts to prepare for situation by learning self defense techniques. Be Aware!  However if you still want us to help you sail through your difficult times, please reach out to us. We are here simply to help you fight the menace of women abuse. All the details you submit will strictly be kept confidential. Once you have submitted your details, our team members will reach out to you on email and guide you with the next steps. Please keep a record of the incident date and time of the calls, posts, comments emails or texts – don’t delete any of these.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          //Youtube videos
          Card(
            elevation: 5,
            child: Column(
              children: [
                YoutubePlayer(
                  controller: _controller,
                  liveUIColor: Colors.amber,
                ),

              ],

            ),
          ),
          SizedBox(height: 15),
          //Women HelpLine numbers
          Card(
            elevation: 5,
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                children: <Widget>[
                  Text(
                    'Women HelpLine Numbers',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SizedBox(height: 15),
                  Container(
                      margin: EdgeInsets.all(20),
                      child: Table(
                          defaultColumnWidth: FixedColumnWidth(150.0),

                          border: TableBorder.all(
                              color: Colors.white,
                              style: BorderStyle.solid,
                              width: 2),
                          children: [
                      TableRow( children: [
                        Column(children:[Text('State', style: TextStyle(fontSize: 25.0))]),
                        Column(children:[Text('Contact No.', style: TextStyle(fontSize: 25.0))]),

                ]),
                            TableRow(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(children:[Text('Demo',style: TextStyle(fontSize: 20.0))]),
                                  ),
                                  GestureDetector(
                                    onTap: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => Call()),
                                      );
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(children:[Text('9545093079',style: TextStyle(fontSize: 20.0))]),
                                    ),
                                  ),
                                 ]),
                            TableRow(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(children:[Text('Delhi',style: TextStyle(fontSize: 20.0))]),
                                  ),
                                  GestureDetector(
                                    onTap: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => Call()),
                                      );
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(children:[Text('011-23379181',style: TextStyle(fontSize: 20.0))]),
                                    ),
                                  ),
                                ]),
                            TableRow(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(children:[Text('Banglore',style: TextStyle(fontSize: 20.0))]),
                                  ),
                                  GestureDetector(
                                    onTap: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => Call()),
                                      );
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(children:[Text('080-22943225',style: TextStyle(fontSize: 20.0))]),
                                    ),
                                  ),
                                ]),
                            TableRow(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(children:[Text('Maharashtra',style: TextStyle(fontSize: 20.0))]),
                                  ),
                                  GestureDetector(
                                    onTap: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => Call()),
                                      );
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(children:[Text('022-26111103',style: TextStyle(fontSize: 20.0))]),
                                    ),
                                  ),
                                ]),
                            TableRow(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(children:[Text('Mumbai',style: TextStyle(fontSize: 20.0))]),
                                  ),
                                  GestureDetector(
                                    onTap: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => Call()),
                                      );
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(children:[Text('9833331111',style: TextStyle(fontSize: 20.0))]),
                                    ),
                                  ),
                                ]),

                          ]

            )
          ),
                  SizedBox(height: 10),

                ],
              ),
            ),
          ),
          SizedBox(height: 15),
          Card(
            elevation: 5,
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                children: <Widget>[
                  Text(
                    'Points for Women Safety',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SizedBox(height: 15),
                  Container(
                    width: 350,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                        child: Text(
                          "Register Criminal Cases",
                          style: TextStyle(fontSize: 20),
                        )),
                  ),
                  SizedBox(height: 15),
                  Container(
                    width: 350,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                        child: Text("Dark spot & CCTV camera installation",
                            style: TextStyle(fontSize: 20))),
                  ),
                  SizedBox(height: 15),
                  Container(
                    width: 350,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                        child: Text("Ghar ki Izzat",
                            style: TextStyle(fontSize: 20))),
                  ),
                  SizedBox(height: 15),
                  ExpandChild(
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 350,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                              child: Text("Incentive Learnings",
                                  style: TextStyle(fontSize: 20))),
                        ),
                        SizedBox(height: 15),
                        Container(
                          width: 350,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                              child: Text("Media content Rating",
                                  style: TextStyle(fontSize: 20))),
                        ),
                        SizedBox(height: 15),
                        Container(
                          width: 350,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                              child: Text("Modern Problems",
                                  style: TextStyle(fontSize: 20))),
                        ),
                        SizedBox(height: 15),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 15),
          //How to help


        ],
      ),
    );

    //
  }
}