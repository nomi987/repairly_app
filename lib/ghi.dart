import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
  _MyAppPageState createState() => _MyAppPageState();
}

class _MyAppPageState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu,color: Colors.black87,),

        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.white,

              ),
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Find Your',style: TextStyle(color: Colors.black87,fontSize: 25),),
                  SizedBox(
                    height: 5,
                  ),
                  Text('nomannnn',style: TextStyle(color: Colors.black,fontSize: 35),),
                  SizedBox(
                    height: 20,

                  ),
                  Container(
                    padding: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(244, 243, 243, 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search,color: Colors.black87,),
                        hintText: "find any thing",
                        hintStyle: TextStyle(color: Colors.black87,fontSize: 25),

                      ),
                    ),
                  )
                ],
              ),
            ),

          ],
        )
      ),




    );
  }
}