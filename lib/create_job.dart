import 'package:flutter/material.dart';

import 'login_Page.dart';

class Create_Job_Page extends  StatefulWidget {
  static String tag = 'Create_job';

  _Create_Job_PageState createState() => new _Create_Job_PageState( );

}

class _Create_Job_PageState extends State<Create_Job_Page>{
  Widget build(BuildContext context){

    final logo=Image.asset('assets/logoo.gpg.png');

    final ForgetPassword = TextFormField(
      decoration: InputDecoration(
        filled: true,

        fillColor: Colors.white,

        hintText: 'ForgetPassword',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0)
        ),
      ),
    );
    final ForgetPasswordButton =Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: Colors.lightBlueAccent,
        borderRadius: BorderRadius.circular(20.0),
        shadowColor: Colors.lightBlue,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 100.0,
          height: 40.0,
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
          },


          child: Text('Forget Password',style: TextStyle(color: Colors.white)),

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
            ForgetPassword,
            SizedBox(height: 20,),
            ForgetPasswordButton,
            SizedBox(height: 20,),





          ],
        ),
      ),
    );
  }

}

