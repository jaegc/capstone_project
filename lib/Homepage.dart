import 'package:flutter/material.dart';

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
            ElevatedButton(
              onPressed: () => changePage('Health Resources'),
              child: Text('Resources'),
            ),
            SizedBox(width: 20),
            ElevatedButton(
              onPressed: () => changePage('Clubs'),
              child: Text('About Page'),
            ),
            SizedBox(width: 20),
            ElevatedButton(
              onPressed: () => changePage('Things to do'),
              child: Text('Things to Know'),
            ),
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
        ] else if (currentPage == 'Clubs') ...[
          Text('Content for the Clubs goes here.'),
        ] else if (currentPage == 'Things to do') ...[
          Text('Content for the Things to do page goes here.'),
        ],
      ],
    );
  }
}

