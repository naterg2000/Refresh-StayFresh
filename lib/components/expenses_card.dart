import 'package:flutter/material.dart';

class ExpensesCard extends StatelessWidget {
  const ExpensesCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const double cardHeight = 180.0;
    const double cardWidth = 100.0;

    return Container(
      height: cardHeight,
      width: cardWidth,
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
          SizedBox(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                      'Expenses Q1',
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Shirts:'),
              Text("\$50.00"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Flights:'),
              Text("\$50.00"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Notebooks:'),
              Text("\$50.00"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Misc:'),
              Text("\$50.00"),
            ],
          ),
          Container(
            height: 30,
            child: GestureDetector(
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFD6DEE1),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(5.0),
                    bottomRight: Radius.circular(5.0),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('View All'),
                  ],
                ),
              ),
              onTap: () {},
            ),
          ),
        ]),
      ),
    );
  }
}
