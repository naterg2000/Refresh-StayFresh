import 'package:flutter/material.dart';
import 'components/HamburgerMenu.dart';
import 'package:blobs/blobs.dart';
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
        textTheme: const TextTheme( // set up all the text theme data
          bodyLarge: TextStyle( // for headers and large text
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

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(

      ),
      drawer: HamburgerMenu(),
      body: Center(
        child: Expanded(
          child: ListView(
            padding: const EdgeInsets.all(10.0),
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width / 2,
                height: 100,
                child: Expanded(
                  child: ListView(
                      scrollDirection: Axis.horizontal,

                      children: <Widget>[
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
                      ],
                    ),
                ),
              ),
              Stack(
                children: <Widget>[
                  Blob.random(
                    size: 200,
                    styles: BlobStyles(
                      color: const Color(0xFFDAAE91)
                    ),
                  )
                ],
              ),
              const Text(
                'At Refresh, Stay Fresh we want\n'
                    'to remind extraordinary people\n'
                    'that they deserve just as much\n'
                    'care as they give to others',
                textAlign: TextAlign.center,
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: const Text('Nominate Today'),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Text(
                      'Our Mission',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    Row(
                      children: <Widget>[
                        Stack(
                          children: [
                            SvgPicture.asset(
                              'lib/assets/vectors/holdingHands.svg'
                            ),
                            const Text(
                                'Kidness'
                            ),
                          ]


                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                child: const Text(
                    'A very nice pic of kindness, rejuvenate, and self care',
                    textAlign: TextAlign.center,
                ),
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
              ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Learn More'
                  )
              ),
              Text(
                'The Team',
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const Spacer(flex: 2),
                    Container(
                      height: 30,
                      width: MediaQuery.of(context).size.width - 100,
                      padding: const EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),
                      child: const Text('Reuben V'),
                    ),
                    Container(
                      height: 30,
                      width: MediaQuery.of(context).size.width - 100,
                      padding: const EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),
                      child: const Text('Figgy R'),
                    ),
                    Container(
                      height: 30,
                      width: MediaQuery.of(context).size.width - 100,
                      padding: const EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),
                      child: const Text('Nathan G'),
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
              ElevatedButton(
                  onPressed: () {},
                  child: const Text('Donate')
              ),
              Text(
                'Events',
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
            ],
          )
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
