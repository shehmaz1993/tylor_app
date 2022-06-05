import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tailor_app/cashmemo.dart';
import 'package:tailor_app/order_page.dart';
import 'package:tailor_app/tylors.dart';

import 'blog.dart';
import 'home.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int i=0;
  var pages = [
    new Home(),
    new Blog(),
    new TylorList(),
    new CashMemo()
    //new NotificationsPage()
  ];
  var v= Container(
    //width: 60,
    // height: 60,
      child:Text('Tylor Chai!'),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(40.0),
            bottomRight: Radius.circular(40.0),
            topLeft: Radius.circular(40.0),
            bottomLeft: Radius.circular(40.0)),
      )
  );

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title:Text('Welcome!')),
      bottomNavigationBar: new BottomNavigationBar(
        backgroundColor: Colors.orange[100],
        unselectedItemColor: Colors.grey[800],
        selectedItemColor: Color.fromRGBO(10, 135, 255, 1),
        items: [
          new BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            label:'Home', //new Text('Home'),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.message_outlined),
            //title: new Text('Blog'),
            label:'Blog'
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.person),
            //title: new Text('Order'),
            label: 'Order'
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.view_column_outlined),
            //title: new Text('More'),
            label: 'More'
          ),
        ],
        currentIndex: i,

        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            i = index;
          });
        },
      ),
      body:pages.elementAt(i),

    );
  }
}