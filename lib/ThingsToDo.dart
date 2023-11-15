import 'package:flutter/material.dart';
import 'package:external_app_launcher/external_app_launcher.dart';
import 'package:launch_app_store/launch_app_store.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

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