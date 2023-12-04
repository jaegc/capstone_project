import 'package:flutter/material.dart';

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
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
              ),
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