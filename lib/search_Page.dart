
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'question_page.dart';

class SearchPage extends  StatefulWidget {
  static String tag = '';

  _SearchPageState createState() => new _SearchPageState( );

}
class _SearchPageState extends State<SearchPage>{
  Widget build(BuildContext context) {
    final logo = Image.asset( 'assets/logoo.gpg.png' );
    TextEditingController _titleController = new TextEditingController();
    _titleController.text = SearchPage.tag;

    return Scaffold(
    backgroundColor: Colors.white,
//    drawer: new Drawer(
//    child: ListView(
//    children: <Widget>[
//    UserAccountsDrawerHeader(
//    accountName: new Text("Nauman", style: new TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
//    accountEmail: new Text("nauman@gmail.com"),
//    currentAccountPicture: CircleAvatar(
//    backgroundImage: AssetImage('unnamed.jpg'),
//    ),
//    decoration: new BoxDecoration(color: Colors.blue[200]),
//    ),
//    ListTile(
//    leading: Icon(Icons.person),
//    title: Text("profile"),
//    ),
//    ListTile(
//    leading: Icon(Icons.vpn_key),
//    title: Text("Password"),
//    ),
//    ListTile(
//    leading: Icon(Icons.info),
//    title: Text("info"),
//    ),
//    ListTile(
//    leading: Icon(Icons.lock),
//    title: Text("Lock"),
//
//    )
//    ],
//    ),
//    ),
    body: Column(
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 20.0),
          width: MediaQuery.of(context).size.width,
          child: Image(
            width: 250.0,
            height: 150.0,
            image: AssetImage('assets/logoo.gpg.png'),
          ),
        ),
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
                icon: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Icon(Icons.search, size: 25.0, color: Colors.black87),
                ),
                hintText: 'What needs to be fixed?',
              ),
            ),
          ),
        ),
        Expanded(
          child: GridView.count(
          crossAxisCount:2,
           physics: BouncingScrollPhysics(),
           children: <Widget>[

             MyMenu(title: "Electric", icon: 'assets/eletration.png'),
          MyMenu(title: "Plumber", icon: 'assets/plumber.png'),
          MyMenu(title: "Carpentary",icon: 'assets/car_painter.png'),
          MyMenu(title: "Gardening",icon: 'assets/gardner.png'),
          MyMenu(title: "Motorcyle",icon: 'assets/machnaic.png'),
          MyMenu(title: "Painting",icon: 'assets/panter.png'),
          ],

          ),
        ),
      ],
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
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => QuestionPage()));
        },
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



