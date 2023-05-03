import 'package:flutter/material.dart';
import '../components/HamburgerMenu.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key, required this.title});

  final String title;

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: HamburgerMenu(),
      body: Center(
        child: Expanded(
            child: ListView(
              padding: const EdgeInsets.all(10.0),
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      'lib/assets/vectors/Logo.svg'
                    ),
                    Text(
                      'Dashboard',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    Text(
                      'Events',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    SizedBox(
                      height: 15,
                      width: MediaQuery.of(context).size.width,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          Text('Upcoming'),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Quarterly'),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Tasks'),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Public'),
                        ],
                      ),
                    ),
                    Text(
                      'Finances',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ],
            )),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}