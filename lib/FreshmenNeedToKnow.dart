import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: FreshmenTipsPage(),
  ));
}

class FreshmenTipsPage extends StatelessWidget {
  final List<String> tabTitles = [
    'Dining and Food Options',
    'Academic Support and Guidance',
    'Campus Resources',
    'Financial Support',
    'Health and Wellness',
    'Student Life and Support',
  ];

  final Map<String, List<String>> secondaryTabTitles = {
    'Dining and Food Options': [
      'UofL meal plans',
      'Microwaves on campus',
      'Places to eat close to campus',
      'Off-campus restaurants accepting Cardinal Cash',
      'Vegan and Vegetarian Options',
    ],
    'Academic Support and Guidance': [
      'Other textbook options',
      'Books & Supplies FAQ’s',
      'Ambassador Peer Mentors for First Year Students',
      'Cards Connection Summer Mentor Program',
      'C.O.N.E.C.T. Peer Mentoring Program',
    ],
    'Campus Resources': [
      'Campus computer labs',
      'Laptop checkout',
      'Printing on campus',
      'Where to find campus jobs',
      'Biggest campus employers',
      'Metro College/UPS jobs',
      'Working on-campus vs off-campus',
    ],
    'Financial Support': [
      'Scholarships',
      'Persistence Grant',
      'UofL Emergency fund',
      'Student ID uses',
      'UofL student discounts',
      'Free for UofL Students',
    ],
    'Health and Wellness': [
      'Need routine medical care?',
      'Check the Weather!',
      'Lost & Found areas on campus',
      'TARC',
    ],
    'Student Life and Support': [
      'I have 2 hrs. between 2 classes what do I do?',
      'Where Should I Study?',
      'Writing Help',
      'Mail',
      'Time management and professionalism',
      'Organize your time',
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Freshmen Need to Know'),
        backgroundColor: Colors.red[300], // Light Red
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: tabTitles.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.red[300], // Light Red
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondaryTabsScreen(
                      primaryTabTitle: tabTitles[index],
                      secondaryTabTitles: secondaryTabTitles[tabTitles[index]]!,
                    ),
                  ),
                );
              },
              child: Center(
                child: Text(
                  tabTitles[index],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class SecondaryTabsScreen extends StatelessWidget {
  final String primaryTabTitle;
  final List<String> secondaryTabTitles;

  SecondaryTabsScreen({
    required this.primaryTabTitle,
    required this.secondaryTabTitles,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(primaryTabTitle),
        backgroundColor: Colors.red[300], // Light Red
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: secondaryTabTitles.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.red[300], // Light Red
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TabContentScreen(
                        primaryTabTitle: primaryTabTitle,
                        secondaryTabTitle: secondaryTabTitles[index],
                      ),
                    ),
                  );
                },
                child: Center(
                  child: Text(
                    secondaryTabTitles[index],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class TabContentScreen extends StatelessWidget {
  final String primaryTabTitle;
  final String secondaryTabTitle;

  TabContentScreen({
    required this.primaryTabTitle,
    required this.secondaryTabTitle,
  });

  final Map<String, Map<String, String>> tabContents = {
    'UofL meal plans': {
      'Content': ''''• Some students qualify to opt out of the meal plan - see website for details and deadline to opt out:
  https://louisville.edu/dos/students/studentpoliciesandprocedures/meal-plan-waiver

  • Interested in changing your meal plan?
  https://louisville.edu/cardinalcard/meal-plan-101-1

  • All meal plans revert back to the standard plan each semester. A student
  must change or add their meal plan every Fall and Spring semester.
  https://louisville.edu/cardinalcard/spring-2018-meal-plan-upgrade-form#:~:text=A%20student%20must%20change%20or,plan%20to%20their%20student%20account.

  https://louisville.edu/cardinalcard/meal-plan-101-1''',
    },
    'Microwaves on campus': {
      'Content': ''''• Off Campus Student Lounge - 2nd floor SAC West (has a fridge too)
                   • PODs have microwaves
                   • Davidson Hall Lounge, Room 105''',
    },
    'Places to eat close to campus':{
      'Content':''''• Bandido Taqueria Mexicana
      • Cardinal Towne
      • Home Run Burgers & Fries
      • Jimmy John's
      '''
    },
    'Off-campus restaurants accepting Cardinal Cash':{
      'Content':'Check out the locations close to campus that accept Cardinal Cash: '
          'https://louisville.edu/cardinalcard/off-campus '
    },
    'Vegan and Vegetarian Options':{
      'Content':'''Check out the webpage for vegan and vegetarian options at UofL:
      https://louisville.edu/healthpromotion/files/ULDiningVeganVegetarianGuide.pdf/view
      '''
    },
    'Books & Supplies FAQ’s':{
      'Content':''''• How do I know which books I need?
  Whether you order online from the bookstore or go in person, you’ll need
  your course schedule, including your section number, to get your books.
  Books are organized according to department, then course number, then
  course section—you could have different books than a friend who’s taking
  the same class, but with a different professor.

  • Do I have to purchase all the books for every class?
  Sometimes books are marked “optional” by your faculty member. If they
  don’t have that specific designation, you should plan on purchasing or
  renting them.

  • Should I buy books in person, online, rent or e-books?
  That is largely personal preference, and your budget might make you
  decide a certain way. UofL recommends buying books at the campus
  bookstore because they’ll definitely have what you need, the location is
  convenient, and if you need to return a book that you end up not needing,
  they make the process easy. Plus, they have a price match program, so you
  won’t pay more than you have to. More info about your options and the
  UofL Campus Store.

  • When should I buy books?
  Students should plan to have all their books in hand by the first class
  meeting, whether that’s renting, borrowing, or purchasing. If you buy early,
  you have a better chance of getting used or rental books, which are cheaper.
  Also, college classes move at a much faster pace than you’re used to in high
  school, so if you don’t have your books it’s easier to get behind and struggle
  to catch up.

  • What if I can’t afford my books by the time I need them?
  You can request an advance of your KEES money in ULink. UofL also has
  Student Success Coordinators who can help you problem-solve this and
  other obstacles to your academic success.

  • What school supplies do I need?
  You’ll get a Cardinal Compass planner from your orientation course
  instructor during the first week of class. It’ll be preloaded with important
  dates at UofL (breaks, registration, tuition deadlines, etc.). Aside from that,
  it’s up to you to decide how to stay organized. Your professors probably
  won’t tell you to get a certain type of notebook or binder like your high
  school teachers did, so you’ll need to develop your own system. Visit the
  Campus Store or call 502.852.6679.
  '''
    },
    // ... (similar content mapping for other tabs)
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(secondaryTabTitle),
        backgroundColor: Colors.red[300], // Light Red
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tabContents[secondaryTabTitle] != null
                  ? tabContents[secondaryTabTitle]!['Content']!
                  : 'No content',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

