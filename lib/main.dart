// @dart=2.9
import 'dart:async';
import 'package:aaryaa/Call.dart';
import 'package:aaryaa/FeaturesPage.dart';
import 'package:aaryaa/HomePage.dart';
import 'package:aaryaa/Login.dart';
import 'package:aaryaa/Registration.dart';
import 'package:aaryaa/helpGuide.dart';
import 'package:aaryaa/sms.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';

import 'FeaturesTab.dart';
import 'Location.dart';
import 'TabBarPage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
final myTheme = ThemeData(
    primarySwatch: Colors.red,
    buttonColor: Color(0xffbe3a5a),
    primaryColor: Color(0xffbe3a5a),
    brightness: Brightness.dark,
    backgroundColor: Color(0xff0b0c0e),
    accentColor: Color(0xffbe3a5a),
    fontFamily: "Montserrat",
    iconTheme: IconThemeData(color: Color(0xffa8a9b1)),
    accentIconTheme: IconThemeData(color: Color(0xffa8a9b1)),
    dividerColor: Color(0xffbe3a5a),
    textTheme: TextTheme(
        headline1: TextStyle(fontSize: 30, fontFamily: 'Montserrat'),
        headline2: TextStyle(
            fontSize: 32, fontFamily: 'MontRegular', color: Color(0xffbe3a5a)),
        button: TextStyle(letterSpacing: 1.5)));

class MyApp extends StatelessWidget {
  Future authCheck() async {

    User _user = await FirebaseAuth.instance.currentUser;
    return _user;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: myTheme,
      //home: SplashScreen(),
      home: FutureBuilder(
        future: authCheck(),
        builder: (BuildContext context, AsyncSnapshot snapshot){
          if (snapshot.data == null) {
            return Registration();
          } else {
            return Login(
              //user: snapshot.data,
              //maxSlide: MediaQuery.of(context).size.width * 0.85,
            );
          }
        },
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => Login()
            )
        )
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}


