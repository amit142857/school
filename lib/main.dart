import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:school/UI/Addstudent.dart';
import 'package:school/UI/profile.dart';
import 'package:school/UI/setting.dart';
import 'package:school/UI/Map.dart';
import 'package:school/screens/login%20page.dart';

import 'screens/Home.dart';

void main() {
  runApp (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login()));      //Login is ready use other to only test the app
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NMESS',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: MyHomePage(
          title: 'Narendra Memorial English School'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Widget> _tabItems = [Home() , Map(), AddStudent() , Profile() , Setting()];
  int _activePage = 2;

  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text(widget.title),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),

      body: Container(
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              ImageSlideshow(
                width: double.infinity,
                height: 250,
                initialPage: 2,
                indicatorColor: Colors.blue,
                indicatorBackgroundColor: Colors.grey,
                children: <Widget> [
                  Image.asset('Images/sch5.jpg' , fit: BoxFit.cover),
                  Image.asset('Images/sch4.jpg' , fit: BoxFit.cover),
                  Image.asset('Images/sch3.jpg' , fit: BoxFit.cover),
                  Image.asset('Images/sch2.jpg' , fit: BoxFit.cover),
                  Image.asset('Images/sch1.jpg' , fit: BoxFit.cover),
                ],
                autoPlayInterval: 3000,
              ),
              _tabItems[_activePage],
            ],
          ),
        ),
      ),
      ),//
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 2,
        height: 50.0,
        items: <Widget>[
          Icon(Icons.home, size: 30 ),
          Icon(Icons.add_location_alt, size: 30),
          Icon(Icons.add, size: 30),
          Icon(Icons.perm_identity, size: 30),
          Icon(Icons.settings, size: 30),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.brown,
        animationCurve: Curves.bounceInOut,
        animationDuration: Duration(milliseconds: 200),
        onTap: (index) {
          setState(() {
            _activePage = index;
          });
        },
        letIndexChange: (index) => true ,
      ),
    );
  }
}


