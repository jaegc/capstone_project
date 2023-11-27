import 'package:flutter/material.dart';
import 'UniversityHousing.dart';
import 'OffCampusHousing.dart';

class ResidentLife extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resident Life'),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                // Navigate to the University Housing page
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => UniversityHousing()));
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red, width: 6.0),
                ),
                child: Stack(
                  children: [
                    Image(
                      image: AssetImage('assets/Images/univhousing.jpg'),
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                    Container(
                      color: Colors.black.withOpacity(0.6),
                    ),
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'University Housing',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 53,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Georgia',
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                // Navigate to the Off-Campus Housing page
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => OffCampusHousing()));
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red, width: 6.0),
                ),
                child: Stack(
                  children: [
                    Image(
                      image: AssetImage('assets/Images/affhousing.jpg'),
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                    Container(
                      color: Colors.black.withOpacity(0.6),
                    ),
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Off-Campus Housing',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 53,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Georgia',
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
