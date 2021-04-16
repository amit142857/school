import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children:<Widget> [
            Text("AAuxa hajur chadai auxa profile" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),)
          ],
        ),
    );
  }
}
