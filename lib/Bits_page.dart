
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:repairly_app/location_Page.dart';




class Bits_Page extends StatefulWidget {
  @override
  _Bits_PageState createState() => _Bits_PageState();
}

class _Bits_PageState extends State<Bits_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        elevation: 0.0,
        centerTitle: true,
        title: Text('BITS', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
      ),
      body: Column(
        children: <Widget>[

          Container(
            margin: EdgeInsets.only(top: 70.0),
            child: Column(
              children: <Widget>[
                Center(
                  child: Text('Explain In Words?', style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold)),
                ),
                Center(
                  child: Text('Write your description of the job', style: TextStyle(color: Colors.black45)),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.0),
          Container(
            height: 150.0,
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.black12
              ),
              child: TextFormField(

                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0),
            child: Column(
              children: <Widget>[
                Center(
                  child: Text('Explain In', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
                ),
                Center(
                  child: Text('photos or Recording', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount:2,
              children: <Widget>[

                MyMenu(title: "Record Vedio", icon: 'assets/eletration.png'),
                MyMenu(title: "Take Photo", icon: 'assets/plumber.png'),

              ],

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
              Navigator.push(context, MaterialPageRoute(builder: (context) => Location_Page()));
            },
            color: Colors.lightBlueAccent,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
            child: Text('NEXT', style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}

class MyMenu extends StatelessWidget {
  MyMenu({this.title, this.icon});

  final String title;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      margin: EdgeInsets.all(20.0),
      color: Colors.lightBlueAccent,
      child: InkWell(
        splashColor: Colors.lightBlueAccent,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0)
                ),
                padding: EdgeInsets.all(10.0),
                child: Image(
                  image: AssetImage(icon),
                  width: 70.0, height: 70.0,
                ),
              ),
              SizedBox(height: 10.0),
              Text(title, style: new TextStyle(fontSize: 20,),),
            ],
          ),
        ),
      ),

    );
  }
}



