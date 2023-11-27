import 'package:flutter/material.dart';

class UniversityHousing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('University Housing'),
        backgroundColor: Colors.black,
      ),
      body: UniversityHousingInfo(),
    );
  }
}

class UniversityHousingInfo extends StatelessWidget {
  Widget _buildHallDetails(BuildContext context, String title, List<String> details) {
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
        for (String detail in details)
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '• ',
                  style: TextStyle(fontSize: 16.0), // Bullet point
                ),
                Expanded(
                  child: Text(
                    detail,
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }

  Widget _buildHousingOption(BuildContext context, String title, List<Map<String, dynamic>> options) {
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
        children: options.map((option) {
          return _buildHallDetails(context, option['name'], option['details']);
        }).toList(),
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
            _buildHousingOption(context, 'Traditional Halls', [
              {
                'name': 'Belknap Village North',
                'details': [
                  'Space for around 400 first-year students',
                  '8 single bathrooms per 40 residents',
                  'Offers singles, doubles, and large doubles.',
                  'Several Study rooms on each floor',
                  '3 Washers/Dryers for each floor',
                  'Kitchen in lobby only',
                  'Games in lobby such as ping pong, arcade, and shuffleboard',
                  '24-hour desk support',
                  'Free Wifi & Laundry',
                ],
              },
              // Add other traditional halls similarly
              {
                'name': 'Belknap Village South',
                'details': [
                  'Space for around 400 first-year students',
                  '8 bathrooms per 40 residents',
                  'Offers singles, doubles, and large doubles',
                  'Several Study rooms on each floor',
                  '3 Washers/Dryers for each floor',
                  'Kitchen in lobby only',
                  'Games in lobby such as pool & basketball',
                  'Free Wifi & Laundry',
                  'Game room with ping pong and pool table',
                ],
              },
              {
                'name': 'Unitas Tower',
                'details': [
                  'Space for 300 first-year and upper-level students',
                  '1 Communal bathroom per floor',
                  'Mostly single rooms, with doubles/triples as an option',
                  'TV Room & Some study rooms',
                  'Laundry Room on the first floor with several machines',
                  '1 kitchen on the first floor',
                ],
              },
            ]),
            SizedBox(height: 16.0),
            _buildHousingOption(context, 'Suite-Style Halls', [
              {
                'name': 'Kurz',
                'details': [
                  'Offers doubles, large doubles, singles, and large singles',
                  'Bathroom is adjacent to the room',
                  'Pool and foosball on the second floor',
                  'Movie room on the first floor',
                  'Several study rooms on each floor',
                  'Kitchen & trash rooms on each floor',
                  'Laundry on the first floor',
                ],
              },
              // Add other suite-style halls similarly
              {
                'name': 'Community Park',
                'details': [
                  'Offers doubles, singles, and large doubles',
                  'Bathroom is adjacent to the room',
                  'Kitchen & game room on the second floor',
                  'Bathrooms shared among at most 4 people',
                  '3 study rooms per floor',
                  'Study rooms with TVs on each floor',
                  'Trash room on each floor',
                  'Laundry on the first floor',
                ],
              },
              {
                'name': 'Louisville Hall',
                'details': [
                  'Can house around 200 residents',
                  'Offers singles, doubles, double deluxe, triples, and 4 bedrooms.',
                  'Laundry on each floor but first',
                  'Study rooms on each floor but first',
                  'Pool, Ping Pong, and TV on the first floor',
                  'Kitchen with ice machine',
                  'Bathroom shared among roommates',
                ],
              },
              {
                'name': 'Billy Minardi Hall',
                'details': [
                  'Offers doubles and some singles',
                  'Laundry on the first floor',
                  'Pool and Ping Pong in the lounge',
                  'Theater room',
                  'Kitchen and dining room',
                  '1 bathroom per resident',
                ],
              },
              {
                'name': 'Bettie Johnson Hall',
                'details': [
                  'Has 1, 2, 3, and 4 bedroom rooms',
                  'Each non-single unit has 2 bathrooms',
                  'TV lounge on the first floor',
                  'Laundry is per floor',
                  'Volleyball in the courtyard',
                  'Several study rooms on each floor',
                ],
              },
            ]),
            SizedBox(height: 16.0),
            _buildHousingOption(context, 'Apartment-Style Halls', [
              {
                'name': 'Cardinal Towne',
                'details': [
                  'Has 1, 2, 3, and 4 bedroom apartments',
                  'Swimming Pool in the courtyard',
                  'Computer Rooms & TV lounges throughout the building',
                  'Fitness center on the first floor',
                  'Several restaurants below apartments',
                ],
              },
              {
                'name': 'Bettie Johnson Hall',
                'details': [
                  'Has 2, 3, and 4 bedroom apartments',
                  'TV lounge',
                  'Laundry is per floor',
                  'Courtyard with volleyball court',
                  'Study rooms per floor',
                ],
              },
              {
                'name': 'University Pointe',
                'details': [
                  'Has 4 bedroom 4 bathroom apartments only',
                  'In-unit washer and dryer',
                  'Lounges and study rooms per floor',
                  'Game room, computer lab, and fitness center on the first floor',
                  'Swimming pool and hot-tub in courtyard',
                ],
              },
              {
                'name': 'University Tower Apartments',
                'details': [
                  'Can house 200 first-year and upper-level students',
                  'Has studios, one-bedrooms, and two-bedrooms',
                  'Laundry is per floor',
                  'Lobby has ping pong and TV',
                  'Study room in the lobby',
                ],
              },
              {
                'name': 'Denny Crum Hall',
                'details': [
                  'Primarily houses student-athletes of any grade level',
                  'Mostly doubles with two bed/two bath, few singles available.',
                  'Movie and Game room in lobby',
                  'Several TVs in the lobby',
                  'Outdoor Patio with fire pits, cornhole, and pickleball',
                ],
              },
            ]),
            SizedBox(height: 16.0),
            // New Expansion Lists
            _buildHousingOption(context, 'RAs and ACs', [
              {
                'name': 'Resident Assistants (RAs)',
                'details': [
                  'RAs are non-freshmen student workers assigned to all residence halls to assist students, enforce policies, and create a positive living environment.',
                  'Their job is to organize events, provide support, and serve as a resource for residents.',
                  'While living on campus, you will have your own RA who is there to support you in residence life problems, and help you find answers about anything else college-related.',
                  'You will have regular check-ins called "Cardinal Calls" with your RA twice a semester. It is recommended that you join your RA\'s GroupMe in order to contact them quickly if you need help or have a concern.',
                ],
              },
              {
                'name': 'Area Coordinators (ACs)',
                'details': [
                  'Area Coordinators university housing staff that manage up to 3 residence halls at once.',
                  'They each have an office and are usually open to walk-in appointments.',
                  'They are there to help with room changes and generally solving residence hall issues as they arise.',
                  'If you have an issue - ask your RA first, and your RA can ask the AC for you if it is important enough.',
                ],
              },
            ]),
            SizedBox(height: 16.0),
            _buildHousingOption(context, 'Safety and Security', [
              {
                'name': 'Safety and Security Information',
                'details': [
                  'Access to all residence hall buildings is limited only to doors that connect to the main lobby. It is a safety concern and therefore it is not permitted to open doors or let people in through other doors who may not be residents.',
                  'Campus Security can be called to any residence hall, and will take you anywhere on campus or 4 miles off of campus if you feel it is unsafe to walk.',
                  'Non-residents must be accompanied by a resident at all times if they are in a residence hall building.',
                  'Guests are only allowed to stay the night twice per month.',
                ],
              },
            ]),
            SizedBox(height: 16.0),
            _buildHousingOption(context, 'Help', [
              {
                'name': 'I have an urgent problem between 5 pm and 8 am',
                'details': [
                  'Call the RA on call number. It should be posted in the lobby of your building.',
                  'Call ULPD if the concern is health or safety related, and then call the RA on call.',
                ],
              },
              {
                'name': 'I\'m locked out of my room',
                'details': [
                  'Go to the front desk of your hall, a desk worker can assist you.',
                  'If there is no desk-worker, call the area phone shown if it\'s during day hours, or the RA on call number if it\'s past 5 pm.',
                ],
              },
              {
                'name': 'I am having roommate issues',
                'details': [
                  'Contact your RA',
                ],
              },
              {
                'name': 'I am having financial concerns with my housing',
                'details': [
                  'Email housing@louisville.edu and copy relevant parties onto it - Your area coordinator, or the bursar office.',
                ],
              },
              {
                'name': 'I want to change my room',
                'details': [
                  'Make sure room changes/swaps are open. Submit an application in the housing portal.',
                ],
              },
              {
                'name': 'I have a maintenance concern',
                'details': [
                  'Submit a maintenance form on the housing portal.',
                ],
              },
            ]),
          ],
        ),
      ),
    );
  }
}
