import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'package:geolocator/geolocator.dart';

class Sms extends StatefulWidget {
  const Sms({Key? key}) : super(key: key);

  @override
  _SmsState createState() => _SmsState();
}


class _SmsState extends State<Sms> {
  var locationMessage = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentLocation();
  }

  void getCurrentLocation() async {
    var position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    var lastPosition = await Geolocator.getLastKnownPosition();
    print(lastPosition);
    var lat = position.latitude;
    var long = position.longitude;
    setState(() {
      //locationMessage = "$position.latitude, $position.longitude,";
      //locationMessage = "$position";
      locationMessage = "Latitude : $lat, Logitude : $long";
    });
    _sendSMS("I am in Danger and my Position : $locationMessage . Here you can track using google map - https://support.google.com/maps/answer/18539?co=GENIE.Platform%3DAndroid&hl=en", recipents);
  }

  final db = FirebaseDatabase.instance.reference().child("Contacts");
  List<String> recipents = ['9545093079','9860271195'];
  @override
  Widget build(BuildContext context) {
    db.once().then((DataSnapshot snapshot){
      Map<dynamic, dynamic> values = snapshot.value;
      values.forEach((key,values) {
        print(values['number']);
        //recipents.addAll(values.characters);
        //print("recipents: $recipents" );
      });
    });


    return Container(


    );
  }
}
void _sendSMS(String message, List<String> recipents) async {
  String _result = await sendSMS(message: message, recipients: recipents)
      .catchError((onError) {
    print(onError);
  });
  print(_result);
}