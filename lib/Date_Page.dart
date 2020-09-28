

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:repairly_app/Bits_page.dart';
import 'package:repairly_app/Map_Page.dart';

import 'Date_Page.dart';




class Date_Page extends StatefulWidget {
  @override
  _Date_PageState createState() => _Date_PageState();
}

class _Date_PageState extends State<Date_Page> {
  @override
  Widget build(BuildContext context) {



    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        iconTheme: IconThemeData(color: Colors.white),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
        elevation: 0.0,
        centerTitle: true,
        title: Text('JOB COMPLRTED', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
      ),
      body: Column(
        children: <Widget>[

          Container(
            margin: EdgeInsets.only(top: 20.0),
            child: Column(
              children: <Widget>[
                Center(
                  child: Text('Rate the work', style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold)),
                ),
                Center(
                  child: Text('Rate the Performance', style: TextStyle(color: Colors.black45)),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.count(
              padding: EdgeInsets.only(top: 20,left: 20,right: 20),
              crossAxisCount:2,
              children: <Widget>[
                Text('Precicion',style:  TextStyle(color: Colors.black,fontSize: 25),),

                FlutterRatingBar(
                  initialRating: 3,
                  fillColor: Colors.amber,
                  borderColor: Colors.amber.withAlpha(50),
                  allowHalfRating: true,
                  onRatingUpdate: (rating) {
                    print(rating);
                    FlutterRatingBarIndicator(
                      itemCount: 1,
                      itemSize: 30.0,
                      emptyColor: Colors.amber.withAlpha(50),
                    );
                  },

                ),



              ],

            ),
          ),
          Expanded(
            child: GridView.count(
              padding: EdgeInsets.only(top: 20,left: 20,right: 20),
              crossAxisCount:2,
              children: <Widget>[
                Text('Punctuation',style:  TextStyle(color: Colors.black,fontSize: 25),),

                FlutterRatingBar(
                  initialRating: 4,
                  fillColor: Colors.amber,
                  borderColor: Colors.amber.withAlpha(50),
                  allowHalfRating: true,
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                FlutterRatingBarIndicator(
                itemCount: 1,
                itemSize: 30.0,
                emptyColor: Colors.amber.withAlpha(50),
              ),

              ],

            ),
          ),
          Expanded(
            child: GridView.count(
              padding: EdgeInsets.only(top: 20,left: 20,right: 20),
              crossAxisCount:2,
              children: <Widget>[
                Text('Execution',style:  TextStyle(color: Colors.black,fontSize: 25),),
                FlutterRatingBar(
                  initialRating: 1,
                  fillColor: Colors.amber,
                  borderColor: Colors.amber.withAlpha(50),
                  allowHalfRating: true,
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
    FlutterRatingBarIndicator(
    itemCount: 1,
    itemSize: 30.0,
    emptyColor: Colors.amber.withAlpha(50),
    ),

              ],

            ),
          ),
          Expanded(
            child: GridView.count(
              padding: EdgeInsets.only(top: 20,left: 20,right: 20),
              crossAxisCount:2,
              children: <Widget>[
                Text('Interaction',style:  TextStyle(color: Colors.black,fontSize: 25),),
                FlutterRatingBar(
                  initialRating: 3,
                  fillColor: Colors.amber,
                  borderColor: Colors.amber.withAlpha(50),
                  allowHalfRating: true,
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
    FlutterRatingBarIndicator(
    itemCount: 1,
    itemSize: 30.0,
    emptyColor: Colors.amber.withAlpha(50),
    ),

              ],

            ),
          ),




          Container(
            margin: EdgeInsets.only(top: 20.0),
            child: Column(
              children: <Widget>[
                Center(
                  child: Text('Leave a note', style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold)),
                ),
                Center(
                  child: Text('Leave a message on profile', style: TextStyle(color: Colors.black45)),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            height: 120.0,
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.black12,
              ),
              child: TextFormField(

                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                ),
              ),
            ),

          ),





        ],
      ),

      bottomNavigationBar: BottomAppBar(
        elevation: 0.0,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 70.0),
          child: RaisedButton(
            elevation: 2.0,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Map_Page()));
            },
            color: Colors.lightBlueAccent,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
            child: Text('SUBMIT', style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}

