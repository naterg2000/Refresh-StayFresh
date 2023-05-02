import 'package:flutter/material.dart';
import 'package:refresh_stayfresh/main.dart';
import 'package:refresh_stayfresh/routes/DonatePage.dart';
import 'package:refresh_stayfresh/routes/EventsPage.dart';
import 'package:refresh_stayfresh/routes/NominatePage.dart';
import 'package:refresh_stayfresh/routes/OurMissionPage.dart';
import 'package:refresh_stayfresh/routes/TheTeamPage.dart';

class HamburgerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const UserAccountsDrawerHeader(
              accountName: Text(
                  'sample_name',
                  style: TextStyle(
                    color: Colors.black,
                  )
              ),
              accountEmail: Text(
                  'sample_email',
                  style: TextStyle(
                    color: Colors.black,
                  )
              ),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(),
              ),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.favorite),
                title: const Text('Nominate'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const NominatePage(title: "Nominate")));
                },
              ),
              ListTile(
                leading: const Icon(Icons.coffee),
                title: const Text('Our Mission'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const OurMissionPage(title: "Our Mission")));
                },
              ),
              ListTile(
                leading: const Icon(Icons.people),
                title: const Text('The Team'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const TheTeamPage(title: "The Team")));
                },
              ),
              ListTile(
                leading: const Icon(Icons.people),
                title: const Text('About Us'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const MyHomePage(title: "About Us")));
                },
              ),
            ],
          ),
          ListTile(
            leading: const Icon(Icons.monetization_on),
            title: const Text('Donate'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const DonationPage(title: "Donate")));
            },
          ),
          ListTile(
            leading: const Icon(Icons.calendar_month),
            title: const Text('Events'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const EventsPage(title: "Upcoming Events")));
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Logout'),
            onTap: () {},
          ),
        ],
      )
    );
  }
}