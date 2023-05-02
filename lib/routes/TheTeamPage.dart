import 'package:flutter/material.dart';
import '../components/HamburgerMenu.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TheTeamPage extends StatefulWidget {
  const TheTeamPage({super.key, required this.title});

  final String title;

  @override
  State<TheTeamPage> createState() => _TheTeamPageState();
}

class _TheTeamPageState extends State<TheTeamPage> {

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
                const Text('This is the team page'),
              ],
            )),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}