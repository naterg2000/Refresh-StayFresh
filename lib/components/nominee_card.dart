import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NomineeCard extends StatefulWidget {
  const NomineeCard({super.key});

  @override
  State<NomineeCard> createState() => _NomineeCardState();
}

class _NomineeCardState extends State<NomineeCard> {

  double cardWidth = 200.0;
  double cardHeight = 180.0;

  @override
  Widget build(BuildContext context) {
    return (
      Container(
        height: cardHeight,
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(height: 4.0),
                  Image.asset('lib/assets/images/sample_profile.png'),
                  const SizedBox(height: 4.0),
                ],
              )
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Juan J.',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),

                  Text(
                    'Juan has been helping others in\n'
                        'the community shelter for...',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: [
                      Column(
                        children: [
                          Text(
                            'Location:',
                              style: Theme.of(context).textTheme.bodyMedium
                          ),
                          Text(
                            'Chatsworth',
                              style: Theme.of(context).textTheme.bodyMedium
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: const [
                          Text(
                              'Submitted:'
                          ),
                          Text(
                              '5/2/23'
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: cardWidth * 0.3,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFD6DEE1),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Icon(Icons.star),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
