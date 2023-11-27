import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class OffCampusHousing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Off-Campus Housing'),
        backgroundColor: Colors.black,
      ),
      body: OffCampusHousingInfo(),
    );
  }
}

class OffCampusHousingInfo extends StatelessWidget {
  Future<void> openUrl(String url) async {
    final _url = Uri.parse(url);
    if (!await launchUrl(_url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $_url');
    }
  }

  Widget _buildApartmentDetails(BuildContext context, String title, String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ListTile(
          title: Text(
            title,
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '• ',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: Text(
                  description,
                  style: TextStyle(fontSize: 17.0),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildHousingOption(BuildContext context, String title, String url, String distance, String description) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ExpansionTile(
        title: Text(
          title,
          style: Theme.of(context).textTheme.headline6!.copyWith(
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        iconColor: Colors.white,
        children: [
          _buildApartmentDetails(context, 'Details', description),
          _buildApartmentDetails(context, 'Distance to Campus', 'Approximately $distance walk'),
          GestureDetector(
            onTap: () => openUrl(url),
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 8.0), // Add top padding
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Website Link',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildHousingOption(
              context,
              'The Province',
              'https://offcampushousing.louisville.edu/city/louisville-ky/listing/the-province-73959',
              '10 minute',
              '1, 2, 3, or 4 bedroom apartments',
            ),
            SizedBox(height: 16.0),
            _buildHousingOption(
              context,
              'The Retreat',
              'https://offcampushousing.louisville.edu/city/louisville-ky/listing/the-retreat-73961',
              '7 minute',
              '1, 2, 3, or 4 bedroom apartments',
            ),
            SizedBox(height: 16.0),
            _buildHousingOption(
              context,
              'The Marshall',
              'https://offcampushousing.louisville.edu/city/louisville-ky/listing/the-marshall-louisville-75743',
              '10 minute',
              'Offers up to 4+ bedroom apartment',
            ),
            SizedBox(height: 16.0),
            _buildHousingOption(
              context,
              'Trifecta Apartments',
              'https://offcampushousing.louisville.edu/city/louisville-ky/listing/trifecta-apartments-74107',
              '10 minute',
              'Only offers up to 3 bedroom apartment',
            ),
            SizedBox(height: 16.0),
            _buildHousingOption(
              context,
              'The Nine',
              'https://offcampushousing.louisville.edu/city/louisville-ky/listing/the-nine-73957',
              '5 minute',
              '1, 2, 3, 4, or 5 bedroom apartments',
            ),
            SizedBox(height: 16.0),
            _buildHousingOption(
              context,
              'Derby Row',
              'https://offcampushousing.louisville.edu/listing?property=99882',
              '20 minute',
              '1, 2, 3, or 4 bedroom apartments',
            ),
            SizedBox(height: 16.0),
            _buildHousingOption(
              context,
              'Station House',
              'https://offcampushousing.louisville.edu/listing?property=81956',
              '15 minute',
              '1 or 2 bedroom apartments',
            ),
          ],
        ),
      ),
    );
  }
}
