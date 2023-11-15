import 'package:flutter/material.dart';
import 'package:external_app_launcher/external_app_launcher.dart';
import 'package:launch_app_store/launch_app_store.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'AppsToDownload.dart';
import 'ThingsToDo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp( // styling for the app
      title: 'Cardinal Resources App',
      home: Scaffold( // privides basic app strcuture with an appbar and body
        appBar: AppBar(
          title: Text('Cardinal Resources App'),
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
      body: ListView(
        children: <Widget>[
          // Container for the header
          Container(
            height: 80,
            decoration: BoxDecoration(
              color: Colors.red[100],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // RichText for the text and arrow icon
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.red[900],
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(text: '  Apps To Download'),
                    ],
                  ),
                ), // RichText
                SizedBox(width: 50),
                // ElevatedButton for navigation
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => AppsToDownload(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red[900], // Set your desired button color
                    onPrimary: Colors.red[300]?.withOpacity(0.5), // Adjust alpha value (0.0 to 1.0)
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.arrow_forward, color: Colors.white), // Right-pointing arrow icon
                    ],
                  ),
                ), // ElevatedButton
              ],
            ),
          ),
          Container(
            height: 80,
            decoration: BoxDecoration(
              color: Colors.red[100],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // RichText for the text and arrow icon
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.red[900],
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(text: '  Things To Do'),
                    ],
                  ),
                ), // RichText
                SizedBox(width: 124),
                // ElevatedButton for navigation
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ThingsToDo(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red[900], // Set your desired button color
                    onPrimary: Colors.red[300]?.withOpacity(0.5), // Adjust alpha value (0.0 to 1.0)
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.arrow_forward, color: Colors.white), // Right-pointing arrow icon
                    ],
                  ),
                ), // ElevatedButton
              ],
            ),
          ),
          Container(
            height: 80,
            decoration: BoxDecoration(
              color: Colors.red[100],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // RichText for the text and arrow icon
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.red[900],
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(text: '  Health Resources'),
                    ],
                  ),
                ), // RichText
                SizedBox(width: 60),
                // ElevatedButton for navigation
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => HealthServicesSubjects(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red[900], // Set your desired button color
                    onPrimary: Colors.red[300]?.withOpacity(0.5), // Adjust alpha value (0.0 to 1.0)
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.arrow_forward, color: Colors.white), // Right-pointing arrow icon
                    ],
                  ),
                ), // ElevatedButton
              ],
            ),
          ),



        ],
      ),
    );
  }
}



  /*
  String currentPage = 'Health Resources'; // Default page

  void changePage(String page) {
    setState(() {
      currentPage = page;
    });
  }


  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            /*ElevatedButton(
              onPressed: () => changePage('Health Resources'),
              child: Text('Resources'),
            ),
            /*SizedBox(width: 20),
            ElevatedButton(
              onPressed: () => changePage('Clubs'),
              child: Text('About Page'),
            ),*/
            SizedBox( width: 10),*/

            ElevatedButton(
              onPressed: () {
                //First, Change the page.
                changePage('AppsToDownload');
                //Then, navigate to the 'AppsToDownload' page
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => AppsToDownload(),
                  ),
                );
              },
              child: Text('Apps To Download'),
            ),
            ElevatedButton(
              onPressed: () {
                //First, Change the page.
                changePage('Things To Do');
                //Then, navigate to the 'AppsToDownload' page
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ThingsToDo(),
                  ),
                );
              },
              child: Text('Things To Do'),
            ),
            SizedBox(width: 10),

            /*SizedBox(width: 10),
            ElevatedButton(
              onPressed: () => changePage('Things to do'),
              child: Text('Things to Know'),
            ),*/
          ],
        ),
        SizedBox(height: 20),
        Text(
          'Current Page: $currentPage',
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(height: 20),
        // You can display page content based on the currentPage variable.
        if (currentPage == 'Health Resources') ...[
          Text('Content for the Health Resources page goes here.'),
        ] else if (currentPage == 'AppsToDownload')...[
          //Text('text')
        ] else if (currentPage == 'Clubs') ...[
          Text('Content for the Clubs goes here.'),
        ] else if (currentPage == 'Things To Do') ...[
          Text('Content for the Things to do page goes here.'),
        ],
      ],
    );
  }
  }*/
class HealthServicesSubjects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SubjectCard(title: 'Campus Safety', content: 'Content for Campus Safety page goes here.'),
        SubjectCard(title: 'Concern Center', content: 'Content for Concern Center page goes here.'),
        SubjectCard(title: 'Counseling Center', content: 'Content for Counseling Center page goes here.'),
        SubjectCard(title: 'Emergency Text Alerts', content: 'Content for Emergency Text Alerts page goes here.'),
        SubjectCard(title: 'Emergency Procedures', content: 'Content for Emergency Procedures page goes here.'),
        SubjectCard(title: 'Escort Service', content: 'Content for Escort Service page goes here.'),
        SubjectCard(title: 'HSC Counseling Services', content: 'Content for HSC Counseling Services page goes here.'),
        SubjectCard(title: 'Student Health Services', content: 'Content for Student Health Services page goes here.'),
        SubjectCard(title: 'ULPD', content: 'Content for ULPD page goes here.'),
      ],
    );
  }
}

class SubjectCard extends StatelessWidget {
  final String title;
  final String content;

  const SubjectCard({required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(content),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SubjectDetailPage(title: title, content: content),
                  ),
                );
              },
              child: Text('Open Page'),
            ),
          ],
        ),
      ),
    );
  }
}

class SubjectDetailPage extends StatelessWidget {
  final String title;
  final String content;

  const SubjectDetailPage({required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(content),
          ],
        ),
      ),
    );
  }
}