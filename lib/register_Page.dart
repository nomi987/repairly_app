import 'package:flutter/material.dart';

class RegisterPage extends  StatefulWidget {
  static String tag = 'Register';

  _RegisterPageState createState() => new _RegisterPageState( );

}
class _RegisterPageState extends State<RegisterPage>{
  Widget build(BuildContext context){

    final logo=Image.asset('assets/logoo.gpg.png');

    final userName = TextFormField(
      decoration: InputDecoration(
        filled: true,

        fillColor: Colors.black12,

        hintText: 'UserName',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0)
        ),
      ),
    );
    final fatherName = TextFormField(
      decoration: InputDecoration(
        filled: true,

        fillColor: Colors.black12,

        hintText: 'fatherName',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0)
        ),
      ),
    );

    final emailAddress = TextFormField(
      decoration: InputDecoration(
        filled: true,

        fillColor: Colors.black12,

        hintText: 'EmailAddress',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0)
        ),
      ),
    );
    final phoneNumbaer = TextFormField(
      decoration: InputDecoration(
        filled: true,

        fillColor: Colors.black12,

        hintText: 'PhoneNumber',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0)
        ),
      ),
    );




    return new Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left:24.0,right:24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 20,),
            userName,
            SizedBox(height: 30,),
            fatherName,
            SizedBox(height: 30,),
            emailAddress,
            SizedBox(height: 30,),
            phoneNumbaer,
            SizedBox(height: 30,),



          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0.0,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 60.0),
          child: RaisedButton(
            elevation: 2.0,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
            },
            color: Colors.lightBlueAccent,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
            child: Text('Registered', style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );

  }

}

