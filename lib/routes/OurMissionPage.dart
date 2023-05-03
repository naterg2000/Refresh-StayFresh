import 'package:flutter/material.dart';
import '../components/HamburgerMenu.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OurMissionPage extends StatefulWidget {
  const OurMissionPage({super.key, required this.title});

  final String title;

  @override
  State<OurMissionPage> createState() => _OurMissionPageState();
}

class _OurMissionPageState extends State<OurMissionPage> {

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
                const Text('This is the mission page'),
              ],
            )),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
