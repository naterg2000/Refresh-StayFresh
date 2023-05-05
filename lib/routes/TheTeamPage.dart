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
                Column(
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .08,
                        ),
                        Image.asset("lib/assets/images/sample_profile.png"),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .06,
                        ),
                        Text(
                          'Reuben V.',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    ),
                    Text('About Reuben...'),
                    Text('Linkedin button here'),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .08,
                        ),
                        Image.asset("lib/assets/images/sample_profile.png"),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .06,
                        ),
                        Text(
                          'Figgy R.',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    ),
                    Text('About Figgy...'),
                    Text('Linkedin button here'),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .08,
                        ),
                        Image.asset("lib/assets/images/sample_profile.png"),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .06,
                        ),
                        Text(
                          'Nathan G.',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    ),
                    Text('About Nathan...'),
                    Text('Linkedin button here'),
                  ],
                ),
              ],
            )),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}