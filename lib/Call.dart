import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class Call extends StatefulWidget {
  const Call({Key? key}) : super(key: key);

  @override
  _CallState createState() => _CallState();
}

class _CallState extends State<Call> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _callNumber();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}


_callNumber() async{
  const number = '9545093079'; //set the number here
  bool? res = await FlutterPhoneDirectCaller.callNumber(number);
}