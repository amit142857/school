import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Card(
        color: Colors.brown,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        ),
        child: Column(
          children:<Widget> [

              SizedBox(
                height: 100,
                child: ListTile(
                  onTap: () =>  debugPrint("Tapped unika"),
                  tileColor: Colors.lightBlue,
                  leading: Image.asset('Images/Class 4/unika.jpg'),
                  title: Text("Unika Bhattarai, Class-4"),
                  subtitle: Text("I am reading NMESS since i was 5. Today i read in class 5 and i can proudly say till now i go the best schooling."),
                  trailing: Icon(Icons.info),
                ),
              ),
            SizedBox(
              height: 100,
              child: ListTile(
                tileColor: Colors.lightBlue,
                leading: Image.asset('Images/Class 4/prajjwal ad.jpg'),
                title: Text("Prajjwal Adhikari, Class-4"),
                subtitle: Text("I am reading NMESS since i was 5. Today i read in class 5 and i can proudly say till now i go the best schooling."),
                trailing: Icon(Icons.info),
              ),
            ),
            SizedBox(
              height: 100,
              child: ListTile(
                tileColor: Colors.lightBlue,
                leading: Image.asset('Images/Class 4/sasher.jpg'),
                title: Text("Sasher Shrestha, Class-4"),
                subtitle: Text("I am reading NMESS since i was 5. Today i read in class 5 and i can proudly say till now i go the best schooling."),
                trailing: Icon(Icons.info),
              ),
            ),
            SizedBox(
              height: 100,
              child: ListTile(
                tileColor: Colors.lightBlue,
                leading: Image.asset('Images/Class 3/charchit nepal.jpg'),
                title: Text("Charchit Nepal, Class-3"),
                subtitle: Text("I am reading NMESS since i was 5. Today i read in class 5 and i can proudly say till now i go the best schooling."),
                trailing: Icon(Icons.info),
              ),
            ),
            SizedBox(
              height: 100,
              child: ListTile(
                tileColor: Colors.lightBlue,
                leading: Image.asset('Images/Class 3/raju makhim.jpg'),
                title: Text("Raju Makhim, Class-3"),
                subtitle: Text("I am reading NMESS since i was 5. Today i read in class 5 and i can proudly say till now i go the best schooling."),
                trailing: Icon(Icons.info),
              ),
            ),
            SizedBox(
              height: 100,
              child: ListTile(
                tileColor: Colors.lightBlue,
                leading: Image.asset('Images/Class 3/unisha stha.jpg'),
                title: Text("Unisha Shrestha, Class-3"),
                subtitle: Text("I am reading NMESS since i was 5. Today i read in class 5 and i can proudly say till now i go the best schooling."),
                trailing: Icon(Icons.info),
              ),
            ),
          ],
        ),
    );
  }
}
