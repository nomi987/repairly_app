import 'package:flutter/material.dart';
import 'package:repairly_app/explain_page.dart';

class QuestionPage extends StatefulWidget {
  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
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
        title: Text('CREATE A JOB', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
      body: ListView(
        children: <Widget>[

          Container(
            margin: EdgeInsets.only(top: 70.0),
            child: Column(
              children: <Widget>[
                Center(
                  child: Text('Whats Needed?', style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold)),
                ),
                Center(
                  child: Text('Write title to the job you required', style: TextStyle(color: Colors.black45)),
                ),
              ],
            ),
          ),
          SizedBox(height: 40.0),
          Container(
            height: 50.0,
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
                  hintText: 'Full House cleaning',
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => Explain_Page()));
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
