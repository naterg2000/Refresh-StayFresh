import 'package:flutter/material.dart';
import 'package:refresh_stayfresh/routes/NominatePage.dart';
import 'components/HamburgerMenu.dart';
//import 'package:blobs/blobs.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFFFFFFF),
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
        textTheme: const TextTheme(
          // set up all the text theme data
          bodyLarge: TextStyle(
            // for headers and large text
            fontWeight: FontWeight.bold, // wight 700
            fontFamily: "Monserrat",
            fontSize: 18,
            height: 5,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF61808B),
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
        outlinedButtonTheme: const OutlinedButtonThemeData(),
      ),
      darkTheme: ThemeData.dark(),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

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
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width / 2,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  const SizedBox(
                    width: 60,
                  ),
                  Text(
                    'Refresh',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  SvgPicture.asset(
                    "lib/assets/vectors/Logo.svg",
                    height: 50.0,
                    width: 50.0,
                  ),
                  Text(
                    'Stay Fresh',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  SvgPicture.asset('lib/assets/vectors/Blob1.svg'),
                  Column(
                    children: <Widget>[
                      const SizedBox(height: 20),
                      Image.asset('lib/assets/images/boy_meditating.png'),
                      const Text('At Refresh, Stay Fresh we want\n'
                          'to remind extraordinary people\n'
                          'that they deserve just as much\n'
                          'case as they give to others.'),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => NominatePage(title: "Nominate")));
                          }, 
                          child: const Text('Nominate Today'))
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: <Widget>[
                Text(
                  'Our Mission',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Kindness'),
                        const SizedBox(
                          height: 10,
                        ),
                        SvgPicture.asset('lib/assets/vectors/holdingHands.svg'),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Rejuvenate'),
                        const SizedBox(
                          height: 10,
                        ),
                        SvgPicture.asset('lib/assets/vectors/Logo.svg'),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Self Care'),
                        const SizedBox(
                          height: 10,
                        ),
                        SvgPicture.asset('lib/assets/vectors/Heart.svg'),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
            const Text(
              'Refresh, Stay Fresh seeks to give those\n'
              'selfless, hardworking, and amazing\n'
              'individuals that do not prioritize their\n'
              'health, a fun wellness day where promoting\n'
              'their wellness is the focus. It is our hope\n'
              'that by giving them that ',
              textAlign: TextAlign.center,
            ),
            ElevatedButton(onPressed: () {}, child: const Text('Learn More')),

            SizedBox(
              height: 300,
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      SvgPicture.asset(
                        'lib/assets/vectors/Blob2.svg',
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'The Team',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          Container(
                            height: 150,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                Container(
                                  height: 150,
                                  width: MediaQuery.of(context).size.width - 150,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFD6DEE1),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.all(6),
                                              child: Image.asset(
                                                'lib/assets/images/sample_profile.png',
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Expanded(
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: const <Widget>[
                                                  Text(
                                                    'Reuben V.',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.bold,
                                                      height: 1,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 30,
                                                  ),
                                                  Text("Born and raised in Los Angeles, Reuben's career as a registered dietitian..."),
                                                ],
                                              ),
                                            ),
                                          ]
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 150,
                                  width: MediaQuery.of(context).size.width - 150,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFD6DEE1),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.all(6),
                                              child: Image.asset(
                                                'lib/assets/images/sample_profile.png',
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Expanded(
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: const <Widget>[
                                                  Text(
                                                    'Figgy R.',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.bold,
                                                      height: 1,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 30,
                                                  ),
                                                  Text("Born and raised in Los Angeles, Reuben's career as a registered dietitian..."),
                                                ],
                                              ),
                                            ),
                                          ]
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 150,
                                  width: MediaQuery.of(context).size.width - 150,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFD6DEE1),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.all(6),
                                              child: Image.asset(
                                                'lib/assets/images/sample_profile.png',
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Expanded(
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: const <Widget>[
                                                  Text(
                                                    'Nathan G.',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.bold,
                                                      height: 1,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 30,
                                                  ),
                                                  Text("Born and raised in Los Angeles, Reuben's career as a registered dietitian..."),
                                                ],
                                              ),
                                            ),
                                          ]
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                ],
              ),
            ),
            Text(
              'Milestones',
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
            Text(
              'Feeling Generous?',
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
            const Text(
              'Donations help up accomplish our goals\n'
              'and all proceeds go towards our cause.\n'
              'With your help, we can continue to reach\n'
              'out, inspire, and help our community.',
              textAlign: TextAlign.center,
            ),
            ElevatedButton(onPressed: () {}, child: const Text('Donate')),
            Text(
              'Events',
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
          ],
        )),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
