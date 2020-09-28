

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';




class Map_Page extends StatefulWidget {
  @override
  _Map_PageState createState() => _Map_PageState();
}

class _Map_PageState extends State<Map_Page> {
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
        title: Text('JOB SEARCH', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
      ),
    );
  }
}

