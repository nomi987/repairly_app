import 'dart:async';

import 'package:flutter/material.dart';
import 'package:repairly_app/login_Page.dart';


import 'login_Page.dart';





void main() => runApp(MaterialApp(
  theme: ThemeData(
      primaryColor: Colors.white),
  debugShowCheckedModeBanner: false,
  home: SplashScreen(),
));


class SplashScreen extends StatefulWidget {


  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  initState() {
    super.initState();
    Timer(Duration(seconds: 5),()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage())));

  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.white70),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 90.0,
                        child: Image.asset('assets/logo.gpg.png'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 40.0),
                      ),
                      Text(
                        "REPAIRLY",
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircularProgressIndicator( backgroundColor: Colors.lightBlueAccent,),
                      Padding(padding: EdgeInsets.only(top: 20.0)),
                      Text("Online Store \n For Repairing",
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold)),
                    ]),
              )
            ],
          )
        ],
      ),
    );





  }
}
class repairly extends StatelessWidget{

  Widget build(BuildContext context){
    return MaterialApp(
        title: 'gdggdgdggdg',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.lightBlueAccent,
          fontFamily: 'Nunito',


        ),
        home: LoginPage());}}
