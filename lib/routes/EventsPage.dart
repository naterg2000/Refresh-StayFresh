import 'package:flutter/material.dart';
import '../components/HamburgerMenu.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EventsPage extends StatefulWidget {
  const EventsPage({super.key, required this.title});

  final String title;

  @override
  State<EventsPage> createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {

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
                const Text('This is the events page'),
              ],
            )),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}