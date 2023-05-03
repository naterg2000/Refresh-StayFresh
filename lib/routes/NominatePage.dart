import 'package:flutter/material.dart';
import 'package:refresh_stayfresh/routes/NomineesPage.dart';
import '../components/HamburgerMenu.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NominatePage extends StatefulWidget {
  const NominatePage({super.key, required this.title});

  final String title;

  @override
  State<NominatePage> createState() => _NominatePageState();
}

class _NominatePageState extends State<NominatePage> {

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Make a Nomination!'),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => NomineesPage(title: "Nominees")));
                      },
                      child: Text('See nominees'),
                    ),
                  ],
                ),
                  Row(
                    children: const <Widget>[
                      Text('First name: '),
                      Flexible(
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Johnny',
                          ),
                        ),
                      ),
                    ],
                  ),
                Row(
                  children: const <Widget>[
                    Text('Last name: '),
                    Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Appleseed',
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const <Widget>[
                    Text('Tell us about them!'),
                    Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'They love dogs :D',
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const <Widget>[
                    Text('Age:'),
                    Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: '22 years YOUNG',
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const <Widget>[
                    Text('Gender: '),
                    Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'non-binary',
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const <Widget>[
                    Text('Health concerns: '),
                    Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'none. healthy as a healthy horse',
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 30,
                  height: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text('Tell us about yourself!'),
                      Flexible(
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Your first name',
                          ),
                        ),
                      ),
                      Flexible(
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Your last name',
                          ),
                        ),
                      ),
                      Flexible(
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'How do you know your nominee?',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                    onPressed: () {},
                    child: Text('Submit Nomination')
                ),
              ],
            ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
