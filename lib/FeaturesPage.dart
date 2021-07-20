import 'package:aaryaa/Call.dart';
import 'package:aaryaa/Location.dart';
import 'package:aaryaa/Registration.dart';
import 'package:aaryaa/sms.dart';

import 'package:flutter/material.dart';
import 'package:aaryaa/sms.dart';
import 'services.dart';

import 'Contacts.dart';
import 'add_contacts.dart';
import 'edit_contact.dart';

class FeaturesPage extends StatefulWidget {
  const FeaturesPage({Key? key}) : super(key: key);

  @override
  _FeaturesPageState createState() => _FeaturesPageState();
}

class _FeaturesPageState extends State<FeaturesPage> {
  Sms sms = new Sms();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        padding: new EdgeInsets.fromLTRB(12, 30, 10, 25),
        child: Row(
          children: [
            new Column(
              children: <Widget>[
                GestureDetector(
    onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Sms()),
                    );

                  },

                  child: SizedBox(
                    height: 250,
                    width: 180,
                    child: Card(
                      color :Colors.purple[200],
                      child: new Container(
                        padding: new EdgeInsets.all(32.0),
                        child: new Column(
                          children: <Widget>[
                            new Image.asset('sms.png', height: 150.0),
                            new Text('SOS', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Contacts()),
                    );
                  },
                  child: SizedBox(
                    height: 250,
                    width: 180,
                    child: Card(
                      color :Colors.amber[300],
                      child: new Container(
                        padding: new EdgeInsets.all(32.0),
                        child: new Column(
                          children: <Widget>[
                            new Image.asset('phonebook.png', height: 150.0),
                            new Text('Contacts', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),

                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            new Column(
              children: <Widget>[

                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => GoogleMapScreen()),
                    );
                  },
                  child: SizedBox(
                    //width: double.infinity,
                    height: 250,
                    width: 180,
                    child: Card(
                      color :Colors.blueGrey[400],
                      child: new Container(
                        padding: new EdgeInsets.all(32.0),
                        child: new Column(
                          children: <Widget>[
                            new Image.asset('location.png', height: 130.0),
                            SizedBox(height: 20,),
                            new Text('Location', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Call()),
                    );
                  },
                  child: SizedBox(
                    height: 250,
                    width: 180,
                    child: Card(
                      color :Colors.lightGreen[400],
                      child: new Container(
                        padding: new EdgeInsets.all(32.0),
                        child: new Column(
                          children: <Widget>[
                            new Image.asset('police.png', height: 150.0),
                            new Text('Call', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
