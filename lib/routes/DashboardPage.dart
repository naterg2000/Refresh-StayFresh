import 'package:flutter/material.dart';
import 'package:refresh_stayfresh/routes/create_task_page.dart';
import '../components/HamburgerMenu.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key, required this.title});

  final String title;

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class EventButton extends StatefulWidget {
  const EventButton({super.key});

  @override
  State<EventButton> createState() => _EventButtonState();
}

class _EventButtonState extends State<EventButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: MediaQuery.of(context).size.width * 0.8,
    );
  }
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: MediaQuery.of(context).size.width * 0.4,
                          decoration: BoxDecoration(
                            color: const Color(0xFFDAAE91),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('Today'),
                              Text('Monday\nMay 1st'),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: const Color(0xFFD6DEE1),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: MediaQuery.of(context).size.width * 0.4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('Today'),
                              Text('Monday\nMay 1st'),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          Text(
                            'Tasks',
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TextButton(onPressed: () {}, child: Text('TODO')),
                              TextButton(onPressed: () {}, child: Text('Completed')),
                            ],
                          ),
                          Expanded(
                            child: ListView(
                              children: [
                                Text('Task button'),
                              ],
                            ),
                          ),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const CreateTaskPage(title: "Nominate")));
                              },
                              child: Text('Add Task'),
                          ),
                        ]
                      ),
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
                    ElevatedButton(
                      onPressed: () {
                      },
                      child: Text(
                        'Create an Event'
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