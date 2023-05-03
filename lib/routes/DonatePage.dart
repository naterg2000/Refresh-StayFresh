import 'package:flutter/material.dart';
import '../components/HamburgerMenu.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DonationPage extends StatefulWidget {
  const DonationPage({super.key, required this.title});

  final String title;

  @override
  State<DonationPage> createState() => _DonationPageState();
}

class _DonationPageState extends State<DonationPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: HamburgerMenu(),
      body: Center(
        child: Expanded(
            child: ListView(
              padding: const EdgeInsets.all(10.0),
              children: <Widget>[
                const Text('This is the donation page'),
              ],
            )),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}