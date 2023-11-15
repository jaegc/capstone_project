import 'package:flutter/material.dart';
import 'package:external_app_launcher/external_app_launcher.dart';
import 'package:launch_app_store/launch_app_store.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';


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
class ThingsToDo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Things To Do'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 45 ,
            decoration: BoxDecoration(
              color: Colors.red[50],
            ),
            child:
            RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(text: '  Popular Museums'),
                  WidgetSpan(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.0),
                      child: Icon(Icons.arrow_downward),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Container(
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Colors.grey,
              ),
            ),
            child: Align(
              alignment: Alignment.centerLeft, // Align the contents to the left
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      width: 180,
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/Images/SpeedArt.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 4),
                  Center(
                    child: Link(
                      target: LinkTarget.blank,
                      uri: Uri.parse('https://www.speedmuseum.org/visit/'),
                      builder: (context, followLink) => ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red, // Background color
                          onPrimary: Colors.white, // Text color
                          padding: EdgeInsets.all(16), // Button padding
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10), // Button border radius
                          ),
                        elevation: 6,
                        minimumSize: Size(100, 0),
                        ),
                        child: Text('Visit The Speed Museum',
                        style: TextStyle(
                            fontSize: 11.8,
                        )
                        ),
                        onPressed: followLink,
                      )
                    )
                  ),
                  // Center
                ], // children
              ), // Row
            ), // Align
          ), // Container

          Container(
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Colors.grey,
              ),
            ),
            child: Align(
              alignment: Alignment.centerLeft, // Align the contents to the left
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      width: 180,
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/Images/derby.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 4),
                  Center(
                      child: Link(
                          target: LinkTarget.blank,
                          uri: Uri.parse('https://www.derbymuseum.org/plan-a-visit/general-information.html'),
                          builder: (context, followLink) => ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.red, // Background color
                              onPrimary: Colors.white, // Text color
                              padding: EdgeInsets.all(16), // Button padding
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10), // Button border radius
                              ),
                              elevation: 6,
                              minimumSize: Size(25, 0),
                            ),
                            child: Text('Visit The KY Derby Museum',
                                style: TextStyle(
                                  fontSize: 10.6,
                                )
                            ),
                            onPressed: followLink,
                          )
                      )
                  ),
                  // Center
                ], // children
              ), // Row
            ), // Align
          ),

          Container(
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Colors.grey,
              ),
            ),
            child: Align(
              alignment: Alignment.centerLeft, // Align the contents to the left
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      width: 180,
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/Images/slugger.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 4),
                  Center(
                      child: Link(
                          target: LinkTarget.blank,
                          uri: Uri.parse('https://www.sluggermuseum.com/visit'),
                          builder: (context, followLink) => ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.red, // Background color
                              onPrimary: Colors.white, // Text color
                              padding: EdgeInsets.all(16), // Button padding
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10), // Button border radius
                              ),
                              elevation: 6,
                              minimumSize: Size(25, 0),
                            ),
                            child: Text('Visit The Slugger Museum',
                                style: TextStyle(
                                  fontSize: 11.3,
                                )
                            ),
                            onPressed: followLink,
                          )
                      )
                  ),
                  // Center
                ], // children
              ), // Row
            ), // Align
          ),

          Container(
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Colors.grey,
              ),
            ),
            child: Align(
              alignment: Alignment.centerLeft, // Align the contents to the left
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      width: 180,
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/Images/KMAC.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 4),
                  Center(
                      child: Link(
                          target: LinkTarget.blank,
                          uri: Uri.parse('https://www.kmacmuseum.org/hours-and-location'),
                          builder: (context, followLink) => ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.red, // Background color
                              onPrimary: Colors.white, // Text color
                              padding: EdgeInsets.all(16), // Button padding
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10), // Button border radius
                              ),
                              elevation: 6,
                              minimumSize: Size(25, 0),
                            ),
                            child: Text('Visit The KMAC Museum',
                                style: TextStyle(
                                  fontSize: 12,
                                )
                            ),
                            onPressed: followLink,
                          )
                      )
                  ),
                  // Center
                ], // children
              ), // Row
            ), // Align
          ),


          Container(
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Colors.grey,
              ),
            ),
            child: Align(
              alignment: Alignment.centerLeft, // Align the contents to the left
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      width: 180,
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/Images/MAM.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 2),
                  Center(
                      child: Link(
                          target: LinkTarget.blank,
                          uri: Uri.parse('https://alicenter.org/visit/'),
                          builder: (context, followLink) => ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.red, // Background color
                              onPrimary: Colors.white, // Text color
                              padding: EdgeInsets.all(16), // Button padding
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10), // Button border radius
                              ),
                              elevation: 6,
                              minimumSize: Size(25, 0),
                            ),
                            child: Text('Visit Muhammad Ali Museum',
                                style: TextStyle(
                                  fontSize: 10.3,
                                )
                            ),
                            onPressed: followLink,
                          )
                      )
                  ),
                  // Center
                ], // children
              ), // Row
            ), // Align
          ),


          Container(
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Colors.grey,
              ),
            ),
            child: Align(
              alignment: Alignment.centerLeft, // Align the contents to the left
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      width: 180,
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/Images/Portland.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 2),
                  Center(
                      child: Link(
                          target: LinkTarget.blank,
                          uri: Uri.parse('https://portlandky.org/visit/'),
                          builder: (context, followLink) => ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.red, // Background color
                              onPrimary: Colors.white, // Text color
                              padding: EdgeInsets.all(16), // Button padding
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10), // Button border radius
                              ),
                              elevation: 6,
                              minimumSize: Size(25, 0),
                            ),
                            child: Text('Visit The Portland Museum',
                                style: TextStyle(
                                  fontSize: 11,
                                )
                            ),
                            onPressed: followLink,
                          )
                      )
                  ),
                  // Center
                ], // children
              ), // Row
            ), // Align
          ),



          Container(
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Colors.grey,
              ),
            ),
            child: Align(
              alignment: Alignment.centerLeft, // Align the contents to the left
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      width: 180,
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/Images/castle.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 2),
                  Center(
                      child: Link(
                          target: LinkTarget.blank,
                          uri: Uri.parse('https://www.conradcaldwell.org/'),
                          builder: (context, followLink) => ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.red, // Background color
                              onPrimary: Colors.white, // Text color
                              padding: EdgeInsets.all(16), // Button padding
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10), // Button border radius
                              ),
                              elevation: 6,
                              minimumSize: Size(25, 0),
                            ),
                            child: Text('Visit The Conrad-Caldwell House',
                                style: TextStyle(
                                  fontSize: 9.2,
                                )
                            ),
                            onPressed: followLink,
                          )
                      )
                  ),
                  // Center
                ], // children
              ), // Row
            ), // Align
          ),

          Container(
            height: 45 ,
            decoration: BoxDecoration(
              color: Colors.red[50],
            ),
            child:
            RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(text: ' Sports '),
                  WidgetSpan(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.0),
                      child: Icon(Icons.arrow_downward),
                    ),
                  ),
                ],
              ),
            ),
          ), // Sports Headline

          Container(
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Colors.grey,
              ),
            ),
            child: Align(
              alignment: Alignment.centerLeft, // Align the contents to the left
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      width: 180,
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/Images/Tennis.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 2),
                  Center(
                      child: Link(
                          target: LinkTarget.blank,
                          uri: Uri.parse('https://gocards.com/facilities/bass-rudd-tennis-center/2'),
                          builder: (context, followLink) => ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.red, // Background color
                              onPrimary: Colors.white, // Text color
                              padding: EdgeInsets.all(16), // Button padding
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10), // Button border radius
                              ),
                              elevation: 6,
                              minimumSize: Size(25, 0),
                            ),
                            child: Text('Play Tennis At UofL',
                                style: TextStyle(
                                  fontSize: 15,
                                )
                            ),
                            onPressed: followLink,
                          )
                      )
                  ),
                  // Center
                ], // children
              ), // Row
            ), // Align
          ), // Tennis box

          Container(
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Colors.grey,
              ),
            ),
            child: Align(
              alignment: Alignment.centerLeft, // Align the contents to the left
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      width: 180,
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/Images/SRC.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 2),
                  Center(
                      child: Link(
                          target: LinkTarget.blank,
                          uri: Uri.parse('https://louisville.edu/intramurals/sports-clubs'),
                          builder: (context, followLink) => ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.red, // Background color
                              onPrimary: Colors.white, // Text color
                              padding: EdgeInsets.all(16), // Button padding
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10), // Button border radius
                              ),
                              elevation: 6,
                              minimumSize: Size(25, 0),
                            ),
                            child: Text('Join A Sports Club At UofL',
                                style: TextStyle(
                                  fontSize: 11,
                                )
                            ),
                            onPressed: followLink,
                          )
                      )
                  ),
                  // Center
                ], // children
              ), // Row
            ), // Align
          ), // Sports Clubs


          Container(
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Colors.grey,
              ),
            ),
            child: Align(
              alignment: Alignment.centerLeft, // Align the contents to the left
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      width: 180,
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/Images/PT.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 2),
                  Center(
                      child: Link(
                          target: LinkTarget.blank,
                          uri: Uri.parse('https://louisville.edu/intramurals/fitness/personal-training'),
                          builder: (context, followLink) => ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.red, // Background color
                              onPrimary: Colors.white, // Text color
                              padding: EdgeInsets.all(16), // Button padding
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10), // Button border radius
                              ),
                              elevation: 6,
                              minimumSize: Size(25, 0),
                            ),
                            child: Text('Personal Fitness Training',
                                style: TextStyle(
                                  fontSize: 11.7,
                                )
                            ),
                            onPressed: followLink,
                          )
                      )
                  ),
                  // Center
                ], // children
              ), // Row
            ), // Align
          ), // Sports Clubs


          Container(
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(
                width: 3,
                color: Colors.grey,
              ),
            ),
            child: Align(
              alignment: Alignment.centerLeft, // Align the contents to the left
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      width: 180,
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/Images/SRCSports.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 2),
                  Center(
                      child: Link(
                          target: LinkTarget.blank,
                          uri: Uri.parse('https://louisville.edu/intramurals/'),
                          builder: (context, followLink) => ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.red, // Background color
                              onPrimary: Colors.white, // Text color
                              padding: EdgeInsets.all(16), // Button padding
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10), // Button border radius
                              ),
                              elevation: 6,
                              minimumSize: Size(25, 0),
                            ),
                            child: Text('Campus Recreation',
                                style: TextStyle(
                                  fontSize: 15,
                                )
                            ),
                            onPressed: followLink,
                          )
                      )
                  ),
                  // Center
                ], // children
              ), // Row
            ), // Align
          ), // Sports Clubs


          Container(
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Colors.grey,
              ),
            ),
            child: Align(
              alignment: Alignment.centerLeft, // Align the contents to the left
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      width: 180,
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/Images/Trails.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 2),
                  Center(
                      child: Link(
                          target: LinkTarget.blank,
                          uri: Uri.parse('https://www.alltrails.com/us/kentucky/louisville/paved'),
                          builder: (context, followLink) => ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.red, // Background color
                              onPrimary: Colors.white, // Text color
                              padding: EdgeInsets.all(16), // Button padding
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10), // Button border radius
                              ),
                              elevation: 6,
                              minimumSize: Size(25, 0),
                            ),
                            child: Text('Paved Trails in Louisville',
                                style: TextStyle(
                                  fontSize: 12,
                                )
                            ),
                            onPressed: followLink,
                          )
                      )
                  ),
                  // Center
                ], // children
              ), // Row
            ), // Align
          ), // Sports Clubs


          Container(
            height: 45 ,
            decoration: BoxDecoration(
              color: Colors.red[50],
            ),
            child:
            RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(text: '  Student Involvement'),
                  WidgetSpan(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.0),
                      child: Icon(Icons.arrow_downward),
                    ),
                  ),
                ],
              ),
            ),
          ),


          Container(
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Colors.grey,
              ),
            ),
            child: Align(
              alignment: Alignment.centerLeft, // Align the contents to the left
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      width: 180,
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/Images/uoflfun.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 2),
                  Center(
                      child: Link(
                          target: LinkTarget.blank,
                          uri: Uri.parse('https://louisville.edu/involvement/covid-19-resources/fun-things-to-do'),
                          builder: (context, followLink) => ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.red, // Background color
                              onPrimary: Colors.white, // Text color
                              padding: EdgeInsets.all(16), // Button padding
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10), // Button border radius
                              ),
                              elevation: 6,
                              minimumSize: Size(25, 0),
                            ),
                            child: Text('Fun Things To Do',
                                style: TextStyle(
                                  fontSize: 15,
                                )
                            ),
                            onPressed: followLink,
                          )
                      )
                  ),
                  // Center
                ], // children
              ), // Row
            ), // Align
          ), //fun things to do


          Container(
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Colors.grey,
              ),
            ),
            child: Align(
              alignment: Alignment.centerLeft, // Align the contents to the left
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      width: 180,
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/Images/uoflevents0.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 2),
                  Center(
                      child: Link(
                          target: LinkTarget.blank,
                          uri: Uri.parse('https://events.louisville.edu/'),
                          builder: (context, followLink) => ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.red, // Background color
                              onPrimary: Colors.white, // Text color
                              padding: EdgeInsets.all(16), // Button padding
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10), // Button border radius
                              ),
                              elevation: 6,
                              minimumSize: Size(25, 0),
                            ),
                            child: Text('Go To A UofL Event',
                                style: TextStyle(
                                  fontSize: 15,
                                )
                            ),
                            onPressed: followLink,
                          )
                      )
                  ),
                  // Center
                ], // children
              ), // Row
            ), // Align
          ), //fun things to do


        ], //Widget Children
      ),

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
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[

          Container(
            height: 129,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Colors.black,
              ),
            ),
            child: Align(
              alignment: Alignment.centerLeft, // Align the contents to the left
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      width: 135,
                      height: 129,
                      child: Image(
                        image: AssetImage('assets/Images/CardsMobile0.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () async {
                        await LaunchApp.openApp(
                          androidPackageName: 'com.sidearmsports.fanapp.louisville',
                          openStore: true,
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                      ),
                      child: const Text('Android: Open CardsMobile',
                      style: TextStyle(
                        fontSize: 12,
                      )),
                    ), // ElevatedButton
                  ), // Center
                ],
              ),
            ),
          ),
          Container(
            height: 129,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Colors.black,
              ),
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      width: 135,
                      height: 129,
                      child: Image(
                        image: AssetImage('assets/Images/UofLEvents.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () async {
                        await LaunchApp.openApp(
                          androidPackageName: 'com.localist.tailgate.louisville', // Correct package name
                          openStore: true,
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                      ),
                      child: const Text('Android: Open UofL Events',
                          style: TextStyle(
                            fontSize: 12.5,
                          )),
                    ), // ElevatedButton
                  ), // Center
                ],
              ),
            ),
          ),
          Container(
            height: 129,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Colors.black,
              ),
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      width: 135,
                      height: 129,
                      child: Image(
                        image: AssetImage('assets/Images/UofLHealth.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () async {
                        await LaunchReview.launch(
                          iOSAppId: '1608015861',
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                      ),
                      child: const Text('IOS: Open UofL Health',
                          style: TextStyle(
                            fontSize: 14,
                          )),
                    ), // ElevatedButton
                  ), // Center
                ],
              ),
            ),
          ),
          Container(
            height: 129,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Colors.black,
              ),
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      width: 135,
                      height: 129,
                      child: Image(
                        image: AssetImage('assets/Images/UofLClub.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () async {
                        await LaunchReview.launch(
                          iOSAppId: '585665497',
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                      ),
                      child: const Text('IOS: Open UofL Club',
                          style: TextStyle(
                            fontSize: 15,
                          )),
                    ), // ElevatedButton
                  ), // Center
                ],
              ),
            ),
          ),
          Container(
            height: 129,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Colors.black,
              ),
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      width: 135,
                      height: 129,
                      child: Image(
                        image: AssetImage('assets/Images/UofLFootball.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () async {
                        await LaunchReview.launch(
                          iOSAppId: '1476764946',
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                      ),
                      child: const Text('IOS: Open UofL Club',
                          style: TextStyle(
                            fontSize: 15,
                          )),
                    ), // ElevatedButton
                  ), // Center
             ],
              ),
            ),
          ),
        ],
      )
    );
  }
}



