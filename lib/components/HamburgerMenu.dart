import 'package:flutter/material.dart';
import 'package:refresh_stayfresh/main.dart';
import 'package:refresh_stayfresh/routes/DashboardPage.dart';
import 'package:refresh_stayfresh/routes/DonatePage.dart';
import 'package:refresh_stayfresh/routes/EventsPage.dart';
import 'package:refresh_stayfresh/routes/NominatePage.dart';
import 'package:refresh_stayfresh/routes/OurMissionPage.dart';
import 'package:refresh_stayfresh/routes/TheTeamPage.dart';

class DashboardListTile extends StatelessWidget {

  DashboardListTile({required this.renderDashboard});

  final bool renderDashboard;

  @override
  Widget build(BuildContext context) {
    if(renderDashboard) {
      return ListTile(
        leading: const Icon(Icons.dashboard),
        title: const Text('Dashboard'),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => DashboardPage(title: "Dashboard")));
        }
      );
    }
    else {
      return const SizedBox(
        height: 0,
        width: 0,
      );
    }
  }

}

class HamburgerMenu extends StatelessWidget {

  bool adminIsLoggedIn = true;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
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
            children: [
              DashboardListTile(renderDashboard: adminIsLoggedIn),
              ListTile(
                leading: const Icon(Icons.coffee),
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
      ),
    );
  }
}