import 'package:flutter/material.dart';
import 'package:refresh_stayfresh/components/nominee_card.dart';
import '../components/HamburgerMenu.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ComponentDevelopmentPage extends StatefulWidget {
  const ComponentDevelopmentPage({super.key, required this.title});

  final String title;

  @override
  State<ComponentDevelopmentPage> createState() => _ComponentDevelopmentPageState();
}

class _ComponentDevelopmentPageState extends State<ComponentDevelopmentPage> {

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
                Text(
                  'Large body text',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Text(
                  'Medium body text',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Text(
                  'Subheading Text',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                NomineeCard(),
              ],
            )),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
