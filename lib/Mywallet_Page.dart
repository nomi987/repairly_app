

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';




class Mywallet_Page extends StatefulWidget {
  @override
  _Mywallet_PageState createState() => _Mywallet_PageState();
}

class _Mywallet_PageState extends State<Mywallet_Page> {
  @override
  Widget build(BuildContext context) {




    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,

        centerTitle: true,
        title: Text('MY WALLET', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 40.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 200,),
                  child: (
                      Text('CURRENT BALANCE', style: TextStyle(color: Colors.black45))


    ),
                ),


              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 200,),
                  child: (
                      Text('10,670 prk', style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold))


                  ),
                ),


              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 65),
                  child: (
                      Text('Last 7 days Earnings ', style: TextStyle(color: Colors.black,fontSize: 25,))


                  ),
                ),


              ],
            ),
          ),
          SizedBox(height: 10.0),
          Expanded(
            child: GridView.count(
              crossAxisCount:2,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top:10,right: 50),
                        child: (
                            Text('500 prk', style: TextStyle(color: Colors.black,fontSize: 25))




                        ),


                      ),
                      Padding(
                        padding: EdgeInsets.only(top:10,right: 50),
                        child: (
                            Text('500 prk', style: TextStyle(color: Colors.black,fontSize: 25))




                        ),


                      ),
                      Padding(
                        padding: EdgeInsets.only(top:10,right: 50),
                        child: (
                            Text('500 prk', style: TextStyle(color: Colors.black,fontSize: 25))




                        ),


                      ),
                      Padding(
                        padding: EdgeInsets.only(top:10,right: 50),
                        child: (
                            Text('500 prk', style: TextStyle(color: Colors.black,fontSize: 25))




                        ),


                      ),



                    ],
                  ),

                ),
                Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top:10,right: 10),
                        child: (
                            Text('15 Oct', style: TextStyle(color: Colors.black,fontSize: 25))




                        ),


                      ),
                      Padding(
                        padding: EdgeInsets.only(top:10,right: 10 ),
                        child: (
                            Text('16 Sep', style: TextStyle(color: Colors.black,fontSize: 25))




                        ),


                      ),
                      Padding(
                        padding: EdgeInsets.only(top:10,right: 10),
                        child: (
                            Text('14 Jan', style: TextStyle(color: Colors.black,fontSize: 25))




                        ),


                      ),
                      Padding(
                        padding: EdgeInsets.only(top:10,right: 10),
                        child: (
                            Text('17 Mar', style: TextStyle(color: Colors.black,fontSize: 25))




                        ),


                      ),



                    ],
                  ),

                ),
              ],


            ),
          ),





        ],
      ),
    );
  }
}

