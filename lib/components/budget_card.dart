import 'package:flutter/material.dart';

class BudgetCard extends StatelessWidget {
  BudgetCard({super.key});

  double cardHeight = 222.0;
  double cardWidth = 340.0;
  double pieChartSize = 80.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: cardHeight,
      width: cardWidth,
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    'Budget Q1',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    '\$800.00',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Text(
                    'Spent: \$0.00',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: pieChartSize,
                    width: pieChartSize,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(pieChartSize / 2),
                    ),
                  ),
                ],
              )
            ],
          ),
          Column(
            children: [
              GestureDetector(
                child: Expanded(
                  child: Container(
                    height: 36,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                      ),
                      color: Color(0xFF61808B),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
