import 'package:flutter/material.dart';

class Map extends StatefulWidget {
  @override
  _MapState createState() => _MapState();
}

class _MapState extends State<Map> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children:<Widget> [
            Text("AAuxa hajur chadai auxa map" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),)
          ],
        ),
    );
  }
}
