import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../components/HamburgerMenu.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CreateTaskPage extends StatefulWidget {
  const CreateTaskPage({super.key, required this.title});

  final String title;

  @override
  State<CreateTaskPage> createState() => _CreateTaskPageState();
}

class _CreateTaskPageState extends State<CreateTaskPage> {

  final flagColors = [ const Color(0xFFC75311), const Color(0xFFD1A82F), const Color(0xFFB5C6BC), const Color(0xFF4F8092), const Color(0xFFD57BF4)];
  double flagButtonSize = 66.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: HamburgerMenu(),
      body: Center(
        child: Expanded(
          child: ListView(
            padding: EdgeInsets.all(10.0),
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset('lib/assets/vectors/Logo.svg'),
                  Text(
                    'Task',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  SizedBox(
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Title'
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Flexible(
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15
                  ),
                  SizedBox(
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                            'Due'
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Flexible(
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Flag',
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: flagButtonSize,
                              width: flagButtonSize,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(flagButtonSize / 2),
                                color: flagColors[0],
                              ),
                            ),
                            Container(
                              height: flagButtonSize,
                              width: flagButtonSize,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(flagButtonSize / 2),
                                color: flagColors[1],
                              ),
                            ),
                            Container(
                              height: flagButtonSize,
                              width: flagButtonSize,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(flagButtonSize / 2),
                                color: flagColors[2],
                              ),
                            ),
                            Container(
                              height: flagButtonSize,
                              width: flagButtonSize,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(flagButtonSize / 2),
                                color: flagColors[3],
                              ),
                            ),
                            Container(
                              height: flagButtonSize,
                              width: flagButtonSize,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(flagButtonSize / 2),
                                color: flagColors[4],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22.0),
                        ),
                        height: 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Notes',
                            ),
                            Flexible(
                              child: TextField(
                                keyboardType: TextInputType.multiline,
                                maxLines: 16,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 40,
                        child: ElevatedButton(
                          onPressed: () {
                            // add an event to db

                            // move back to dashboard
                          },
                          child: const Text('Create Task'),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                            'Cancel',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          ),
                        ),

                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
