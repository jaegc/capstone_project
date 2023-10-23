import 'package:flutter/material.dart';

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
            /*SizedBox(width: 20),
            ElevatedButton(
              onPressed: () => changePage('Clubs'),
              child: Text('About Page'),
            ),*/
            SizedBox( width: 10),

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
        ] else if (currentPage == 'Things to do') ...[
          Text('Content for the Things to do page goes here.'),
        ],
      ],
    );
  }
  }
class AppsToDownload extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Apps to Download'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 100,
            color: Color(0xFFAF0000),
          ), //App 1

        ], // children
      ), //row


      /*Container(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: ElevatedButton(
            onPressed: () {
              // Implement the logic for what should happen when the button is pressed.
              // You can use Navigator to navigate back to the home page, for example.
              Navigator.of(context).pop();
            },
            style: ElevatedButton.styleFrom(
              primary: Color(0xFFAF0000), // Cardinal Red color
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            ),
            child: Text('Go back to home page'),
          ),

        ),
      ),*/
    );
  }
}



