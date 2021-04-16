import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children:<Widget> [
            Text("AAuxa hajur chadai auxa Setting" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),)
          ],
        ),
    );
  }
}
