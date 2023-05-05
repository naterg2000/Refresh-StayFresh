import 'package:flutter/material.dart';
import '../components/HamburgerMenu.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NomineeCard extends StatefulWidget {
  const NomineeCard({super.key});

  @override
  State<NomineeCard> createState() => _NomineeCardState();
}

class _NomineeCardState extends State<NomineeCard> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 100,
        width: 100,
        color: Colors.blue,
        child: Row(
          children: [
            Column(
              children: [
                Image.asset(
                  'lib/asset/images/sample_profile.png'
                ),
              ],
            ),
            Column(),
            Column(),
          ],
        ),
      ),
    );
  }
}
