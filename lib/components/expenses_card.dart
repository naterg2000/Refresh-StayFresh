import 'package:flutter/material.dart';
import 'package:refresh_stayfresh/components/nominee_card.dart';
import '../components/HamburgerMenu.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ExpensesCard extends StatelessWidget {
  const ExpensesCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const double cardHeight = 100.0;
    const double cardWidth = 100.0;

    return Container(
      height: cardHeight,
      width: cardWidth,
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Expanded(
        child: Column(
            children: [
              Text('Expenses Q1'),
              Row(),
              Row(),
              Row(),
            ]
        ),


      ),
    );
  }
}