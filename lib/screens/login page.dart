import 'package:flutter/material.dart';
import 'package:school/main.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget> [
              Container(
                width: width,
                height: height * 0.45,
                child: Image.asset('Images/nmess.jpg' , fit: BoxFit.fill)),
              SizedBox(height: 30),
              Text("Login" , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold)),
              SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  hintText: "Email",
                  suffixIcon: Icon(Icons.mail),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
              ),
              SizedBox(height: 30),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                  suffixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
              ),
              SizedBox(height: 10),
              RaisedButton(
                color: Colors.brown[900],
                  onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
                  },
                  child: Text("Login" , style: TextStyle(color: Colors.white),)
              )
            ],
          ),
        ),
      ),
    );
  }
}
