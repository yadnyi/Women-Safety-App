import 'package:aaryaa/Contacts.dart';
import 'package:aaryaa/FeaturesTab.dart';
import 'package:aaryaa/HomePage.dart';
import 'package:aaryaa/Location.dart';
import 'package:aaryaa/Registration.dart';
import 'package:aaryaa/bottom.dart';
import 'package:aaryaa/sms.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'add_contacts.dart';
import 'helpGuide.dart';

class TabBarPage extends StatefulWidget {
  @override
  _TabBarPageState createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
    //  _smsReceiver = SmsReceiver(onSmsReceived, onTimeout: onTimeout);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Aaryaa',
          style: TextStyle(fontSize: 25.0),
        ),

        backgroundColor: Color(0xffbe3a5a),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HelpGuide()),
                );
              },
              child: Icon(
                Icons.info,
              ),

            ),
          )
        ],
        bottom: TabBar(
          labelStyle: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
          controller: controller,
          tabs: <Widget>[
            Tab(text: 'About'),
            Tab(text: 'Features'),
          ],
        ),
      ),
      body: TabBarView(controller: controller, children: <Widget>[
        HomePage(),
        FeaturesTab(),
      ]),
    );
  }
}