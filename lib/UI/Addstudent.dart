import 'package:flutter/material.dart';

class AddStudent extends StatefulWidget {
  @override
  _AddStudentState createState() => _AddStudentState();
}

class _AddStudentState extends State<AddStudent> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children:<Widget> [
            TextField(
              decoration: InputDecoration(
                labelText: "Enter your name"
              ),
              autocorrect: true,
            )
          ],
        ),
    );
  }
}
