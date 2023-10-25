import 'package:flutter/material.dart';
import 'package:external_app_launcher/external_app_launcher.dart';
import 'package:launch_app_store/launch_app_store.dart';


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



