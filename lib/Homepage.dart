import 'package:flutter/material.dart';
import 'AppsToDownload.dart';
import 'ThingsToDo.dart';
import 'ImportantLinks.dart';
import 'ResidentLife.dart';
import 'HealthServicesSubjects.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cardinal Resources App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cardinal Resources App'),
          backgroundColor: Colors.black,
        ),
        body: Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Column 1 with long text
          Container(
            width: 300, // Adjust the width as needed
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildText('Apps To Download'),
                buildText('Things To Do'),
                buildText('Important Links'),
                buildText('Resident Life'),
                buildText('Health Resources'),
              ],
            ),
          ),
          // Column 2 with arrow buttons
          Expanded(
            child: Container(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  buildArrowButton(AppsToDownload()),
                  buildArrowButton(ThingsToDo()),
                  buildArrowButton(ImportantLinks()),
                  buildArrowButton(ResidentLife()),
                  buildArrowButton(HealthServicesSubjects()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildText(String text) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 30,
          color: Colors.red,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget buildArrowButton(Widget page) {
    return Container(
      height: 40, // Adjust the height as needed
      width: 80,  // Adjust the width as needed
      margin: EdgeInsets.all(18),// Adjust the margin as needed
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => page,
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.red, // Set your desired button color
          onPrimary: Colors.red?.withOpacity(0.5),
        ),
        child: Icon(Icons.arrow_forward, color: Colors.white),
      ),
    );
  }
}
