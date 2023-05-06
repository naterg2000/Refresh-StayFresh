import 'package:flutter/material.dart';

class AdminNavbar extends StatelessWidget {
  const AdminNavbar({super.key});

  @override
  Widget build(BuildContext context) {

    double navbarWidth = MediaQuery.of(context).size.width;
    double navbarHeight = 60.0;
    double iconSize = 45.0;

    return(
      Container(
        height: navbarHeight,
        width: navbarWidth,
        decoration: BoxDecoration(
          border: Border.all(),
        ),
        child: Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.dashboard,
                size: iconSize,
              ),
              Icon(
                Icons.calendar_month,
                size: iconSize,
              ),
              Icon(
                Icons.message,
                size: iconSize,
              ),
              Icon(
                Icons.people,
                size: iconSize,
              ),
            ],
          ),
        ),
      )
    );
  }

}