import 'package:aaryaa/Contacts.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddContacts extends StatefulWidget {
  @override
  _AddContactsState createState() => _AddContactsState();
}

class _AddContactsState extends State<AddContacts> {
  late TextEditingController _nameController, _numberController;
  String _typeSelected ='';

  late DatabaseReference _ref;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _nameController = TextEditingController();
    _numberController = TextEditingController();
    _ref = FirebaseDatabase.instance.reference().child('Contacts');
  }


  Widget _buildContactType(String title){

    return InkWell(

      child: Container(
        height: 40,
        width: 90,

        decoration: BoxDecoration(
          color: _typeSelected == title? Colors.green : Theme.of(context).accentColor,
          borderRadius: BorderRadius.circular(15),
        ),

        child: Center(child: Text(title, style: TextStyle(fontSize: 18,
            color: Colors.white),
        ),),),

      onTap: (){
        setState(() {
          _typeSelected = title;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Save Contact'),
      ),
      body: Container(
        margin: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(
                hintText: 'Enter Name',
                prefixIcon: Icon(
                  Icons.account_circle,
                  size: 30,
                ),
                //fillColor: Colors.white,
                filled: true,
                contentPadding: EdgeInsets.all(15),
              ),
            ),
            SizedBox(height: 15),
            TextFormField(
              controller: _numberController,
              decoration: InputDecoration(
                hintText: 'Enter Number',

                prefixIcon: Icon(
                  Icons.phone_iphone,
                  size: 30,
                ),
                //fillColor: Colors.white,
                filled: true,
                contentPadding: EdgeInsets.all(15),
              ),
            ),
            SizedBox(height: 15,),
            Container(
              height: 40,
              child: ListView(

                scrollDirection: Axis.horizontal,
                children: [
                  _buildContactType('Work'),
                  SizedBox(width: 10),
                  _buildContactType('Family'),
                  SizedBox(width: 10),
                  _buildContactType('Friends'),
                  SizedBox(width: 10),
                  _buildContactType('Others'),
                ],
              ),
            ),
            SizedBox(height: 25,),
            Material(
              elevation: 5,
              color: Color(0xffbe3a5a),
              borderRadius: BorderRadius.circular(32.0),
              child: Center(
                child: MaterialButton(
                  minWidth: 200.0,
                  height: 45.0,
                  child: Text('Save Contact',
                    style: TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 20.0
                ),),
                  onPressed: (){
                    saveContact();
                  },

                  //color: Theme.of(context).primaryColor,
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
  void saveContact(){

    String name = _nameController.text;
    String number = _numberController.text;

    Map<String,String> contact = {
      'name':name,
      'number': '+91 ' + number,
      'type': _typeSelected,
    };

    _ref.push().set(contact).then((value) {
      Navigator.pop(context);
    });


  }
}
