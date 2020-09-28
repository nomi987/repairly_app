
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:repairly_app/Mywallet_Page.dart';

import 'Date_Page.dart';




class Location_Page extends StatefulWidget {
  @override
  _Location_PageState createState() => _Location_PageState();
}

class _Location_PageState extends State<Location_Page> {
  @override
  Widget build(BuildContext context) {
    final MapButton =Padding(
      padding: EdgeInsets.only(top: 40.0),
      child: Material(
        color: Colors.lightBlueAccent,
        borderRadius: BorderRadius.circular(25.0),
        shadowColor: Colors.lightBlue,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 180.0,
          height: 40.0,
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> map_Class ()));
          },


          child: Text('Choose from Map',style: TextStyle(color: Colors.black)),

        ),
      ),

    );
    final TodayButton =Padding(
      padding: EdgeInsets.only(top: 30.0,left: 20,right: 20,bottom: 100),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25.0),
        shadowColor: Colors.lightBlue,
        elevation: 5.0,
        child: MaterialButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Date_Page()));
          },


          child: Text('Today',style: TextStyle(color: Colors.black)),

        ),
      ),

    );
    final TimeButton =Padding(
      padding: EdgeInsets.only(top: 30.0,left: 20,right: 20,bottom: 100),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlue,
        elevation: 5.0,
        child: MaterialButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Location_Page()));
          },


          child: Text('Time',style: TextStyle(color: Colors.black)),

        ),
      ),

    );
    final PriceButton =Padding(
      padding: EdgeInsets.only(top:15,bottom: 80),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
        shadowColor: Colors.lightBlue,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 180.0,
          height: 40.0,
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Location_Page()));
          },


          child: Text('500 PKR',style: TextStyle(color: Colors.black)),

        ),
      ),

    );

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
        title: Text('CREATE A JOB', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
      ),
      body: Column(
        children: <Widget>[

          Container(
            margin: EdgeInsets.only(top: 20.0),
            child: Column(
              children: <Widget>[
                Center(
                  child: Text('Where is it?', style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            height: 50.0,
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.black12,
              ),
              child: TextFormField(

                decoration: InputDecoration(
                  hintText: 'Ashiq colony Bannu Road Kohat',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                ),
              ),
            ),

          ),
          MapButton,
          Container(
            margin: EdgeInsets.only(top: 40.0),
            child: Column(
              children: <Widget>[
                Center(
                  child: Text('When?', style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
                ),
                Center(
                  child: Text('When do you want the job to start', style: TextStyle(color: Colors.black45)),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount:2,
              children: <Widget>[
                TodayButton,TimeButton
              ],

            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            child: Column(
              children: <Widget>[
                Center(
                  child: Text('How much?', style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold)),
                ),
                Center(
                  child: Text('Set your Target Price', style: TextStyle(color: Colors.black45)),
                ),
              ],
            ),
          ),
          PriceButton,





        ],
      ),

      bottomNavigationBar: BottomAppBar(
        elevation: 0.0,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 70.0),
          child: RaisedButton(
            elevation: 2.0,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Mywallet_Page()));
            },
            color: Colors.lightBlueAccent,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
            child: Text('PUBLISH', style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }

  map_Class ( ) {}
}

