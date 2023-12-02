import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ImportantLinks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Important Links'),
        backgroundColor: Colors.black,
      ),
      body: ImportantLinksPage(),
    );
  }
}

class ImportantLinksPage extends StatelessWidget {
  // Function to open URLs
  Future<void> openUrl(String url) async {
    final _url = Uri.parse(url);
    if (!await launchUrl(_url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $_url');
    }
  }

  Widget _buildExpansionTile(BuildContext context, String title,
      List<Map<String, String>> links) {
    return Theme(
      data: ThemeData(),
      child: ExpansionTile(
        title: Text(
          title,
          style: Theme
              .of(context)
              .textTheme
              .headline6!
              .copyWith(
            fontSize: 35.0,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
        ),
        iconColor: Colors.red,
        children: links.map((link) {
          return ListTile(
            title: Text(
              link.keys.first,
              style: Theme
                  .of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(
                fontSize: 16.0,
              ),
            ),
            onTap: () => openUrl(link.values.first),
          );
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
            _buildExpansionTile(context, 'Classes', [
              {'Blackboard': 'https://blackboard.louisville.edu/'},
              {'ULink': 'https://ulink.louisville.edu/'},
              {
                'Course Calendar': 'https://louisville.edu/calendars/academic/undergrad-grad'
              },
              {
                'All Majors & Minors': 'https://catalog.louisville.edu/undergraduate/programs-study/'
              },
              {
                'All Courses': 'https://catalog.louisville.edu/undergraduate/courses/'
              },
            ]),
            SizedBox(height: 16.0),
            _buildExpansionTile(context, 'Campus Dining', [
              {
                'Meal Plan Account': 'https://louisvillestudentlink.atriumcampus.com/'
              },
              {
                'Locations & Hours': 'https://louisville.campusdish.com/LocationsAndMenus'
              },
              {'Instagram': 'https://www.instagram.com/uofldining/'},
              {'Twitter': 'https://twitter.com/uofldining'},
              {'Facebook': 'https://www.facebook.com/uofldining'},
            ]),
            SizedBox(height: 16.0),
            _buildExpansionTile(context, 'Housing', [
              {'Website': 'https://louisville.edu/housing'},
              {
                'Portal': 'https://louisville.rms-inc.com/RunFeature/RunFeature?ftl=Xeed09c877c1240a593fc77c7c953ddfe'
              },
              {'Instagram': 'https://www.instagram.com/uofl_housing/'},
              {'Twitter/X': 'https://twitter.com/UofL_Housing'},
              {'Facebook': 'https://www.facebook.com/UofLHousing'},
            ]),
            SizedBox(height: 16.0),
            _buildExpansionTile(context, 'Campus Recreation', [
              {
                'Group Fitness': 'https://louisville.edu/intramurals/fitness/fall-2023-group-fitness-schedule/view'
              },
              {
                'Intramural Sports': 'https://louisville.edu/intramurals/intramurals'
              },
              {'Instagram': 'https://www.instagram.com/uoflcampusrec/'},
              {'Twitter': 'https://twitter.com/uoflcampusrec'},
            ]),
            SizedBox(height: 16.0),
            _buildExpansionTile(context, 'Events & Jobs', [
              {
                'Cardinal Careers': 'https://cardinalcareers-csm.symplicity.com/students/?signin_tab=0'
              },
              {'Engage': 'https://louisville.campuslabs.com/engage/'},
              {
                'University Housing Student Jobs': 'https://louisville.edu/housing/jobs/studentjobs'
              },
              {
                'PAL & Tutoring Student Jobs': 'https://reach.louisville.edu/employment/#work'
              },
            ]),
            SizedBox(height: 16.0),
            _buildExpansionTile(context, 'REACH', [
              {'Website': 'https://reach.louisville.edu/'},
              {'Instagram': 'https://www.instagram.com/p/CzMJdi0rWrl/'},
              {'Facebook': 'https://www.facebook.com/UofLREACH'},
            ]),
            SizedBox(height: 16.0),
            _buildExpansionTile(context, 'Writing Center', [
              {'Website': 'https://louisville.edu/writingcenter'},
              {'Instagram': 'https://www.instagram.com/uoflwritingctr/'},
              {
                'Appointments': 'https://louisville.edu/writingcenter/appointments-1/appointments'
              },
            ]),
          ],
        ),
      ),
    );
  }
}
