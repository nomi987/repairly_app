import 'package:flutter/material.dart';
import 'package:repairly_app/register_Page.dart';
import 'package:repairly_app/search_Page.dart';
import 'package:repairly_app/forgetpassword_Page.dart';




class LoginPage extends  StatefulWidget {
  static String tag = 'login';

  _LoginPageState createState() => new _LoginPageState( );

}

class _LoginPageState extends State<LoginPage>{
  Widget build(BuildContext context){
    final logo=Image.asset('assets/logoo.gpg.png');
    Text('Sign in to your account',style: TextStyle(color: Colors.black,fontSize: 35),);
    SizedBox(
    height: 30,
    );

    final email = TextFormField(


      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        filled: true,

        fillColor: Colors.white,

        hintText: 'Email address',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0)
        ),
      ),
    );
    final password = TextFormField(
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        filled: true,

        fillColor: Colors.white,
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0)
        ),
      ),
    );
    final LoginButton =Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: Colors.lightBlueAccent,
        borderRadius: BorderRadius.circular(20.0),
        shadowColor: Colors.lightBlue,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 80.0,
          height: 30.0,
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> SearchPage()));
          },


          child: Text('Log in',style: TextStyle(color: Colors.white)),

        ),
      ),

    );
    final forgotlabel =FlatButton(
      child: Text('forgot password',style: TextStyle(color: Colors.black)),
      padding:EdgeInsets.only(left: 120,),
      onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> ForgetPasswordPage()));
      },
    );
    final label = FlatButton(
      child: Text('Or',style: TextStyle(color: Colors.black)),

    );

    final registerButton =Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: Colors.lightBlueAccent,
        borderRadius: BorderRadius.circular(20.0),
        shadowColor: Colors.lightBlue,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> RegisterPage()));
          },


          child: Text('Register',style: TextStyle(color: Colors.white)),

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
            Text('           Sign in to your account',style: TextStyle(color: Colors.black,fontSize: 20),),
            SizedBox(
              height: 20,

            ),
            email,
            SizedBox(height: 30,),
            password,
            SizedBox(height: 30,),
            forgotlabel,
            LoginButton,
            label,
            registerButton,


          ],
        ),
      ),
    );
  }
}