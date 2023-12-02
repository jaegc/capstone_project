import 'package:flutter/material.dart';
import 'Homepage.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Main Page',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cardinal Resources App'),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.red,
        body: MainScreen(),
      ),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.7),
                borderRadius: BorderRadius.circular(15.0),
              ),
              padding: EdgeInsets.all(20.0),
              child: Text(
                'This is our project for CSE 350. We wanted to make something that could help freshmen navigate their new life at UofL since it can be hard and isolating to be in such a different environment. This has a lot of information that we thought would be the most useful, and most of it comes from our own experiences as students.',
                style: TextStyle(fontSize: 30, color: Colors.black, fontFamily: "Copperplate", fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => (Homepage()),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                onPrimary: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
              child: Text(
                'TO NAVIGATION PAGE',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, fontFamily: "Roboto"), // Make text bigger and bold
              ),
            ),
          ],
        ),
      ),
    );
  }
}
