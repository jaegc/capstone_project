import 'package:flutter/material.dart';
import 'package:external_app_launcher/external_app_launcher.dart';
import 'package:launch_app_store/launch_app_store.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

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