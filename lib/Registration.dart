import 'package:aaryaa/Contacts.dart';
import 'package:aaryaa/Login.dart';
import 'package:aaryaa/add_contacts.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:firebase_auth/firebase_auth.dart';


class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final _auth = FirebaseAuth.instance;
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  bool showProgress = false;
  late String name, email, password, contact;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration"),
      ),
      body: ModalProgressHUD(
        inAsyncCall: showProgress,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            Image.asset("Aaryaa.png", width: 150.0,),

            SizedBox(
              height: 20.0,
            ),
            TextField(
              keyboardType: TextInputType.name,
              //textAlign: TextAlign.center,
              onChanged: (value) {
                name = value; //get the value entered by user.
              },
              decoration: InputDecoration(
                  hintText: "Enter your Name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32.0)))),
            ),
            SizedBox(
              height: 15.0,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              //textAlign: TextAlign.center,
              onChanged: (value) {
                email = value; //get the value entered by user.
              },
              decoration: InputDecoration(
                  hintText: "Enter your Email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32.0)))),
            ),
            SizedBox(
              height: 15.0,
            ),
            TextField(
              obscureText: true,
              //textAlign: TextAlign.center,
              onChanged: (value) {
                password = value; //get the value entered by user.
              },
              decoration: InputDecoration(
                  hintText: "Enter your Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32.0)))),
            ),
            SizedBox(
              height: 15.0,
            ),
            Material(
              elevation: 5,
              color: Color(0xffbe3a5a),
              borderRadius: BorderRadius.circular(32.0),
              child: MaterialButton(
                onPressed: () async {
                  setState(() {
                    showProgress = true;
                  });
                  try {
                    final newuser =
                    await _auth.createUserWithEmailAndPassword(
                        email: email, password: password);
                    if (newuser != null) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Contacts()),
                      );
                      setState(() {
                        showProgress = false;
                      });
                    }
                    } catch (e) {}
                },
                minWidth: 200.0,
                height: 45.0,
                child: Text(
                  "Register",
                  style:
                  TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
              child: Text(
                "Had an Account ?",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
