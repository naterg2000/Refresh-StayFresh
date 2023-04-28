import 'package:flutter/material.dart';

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
          SizedBox(
            height: 90,
            child: ListTile(
              leading: const Icon(Icons.favorite),
              title: const Text(
                'Nominate',
              ),
              onTap: () {},
            ),
          ),
          Container(
            height: 100,
            alignment: Alignment.center,
            child: Expanded(
              child: ListTile(
                leading: const Icon(Icons.favorite),
                title: const Text('Nominate again'),
                onTap: () {},
              )
            )
          ),
          ListTile(
            leading: const Icon(Icons.coffee),
            title: const Text('Our Mission'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.people),
            title: const Text('The Team'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.monetization_on),
            title: const Text('Donate'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.calendar_month),
            title: const Text('Events'),
            onTap: () {},
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