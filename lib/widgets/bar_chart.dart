import 'package:flutter/material.dart';

class BarChart extends StatelessWidget {
  final List<double> expenses;

  BarChart(this.expenses);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Weekly Spendings",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              letterSpacing: 1.2,
          ),
        ),
        SizedBox(height: 5.0),
          Row(
            children: [
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.arrow_back),
                iconSize: 30.0,
              ),
            ],
          ),
      ],
    );
  }
}
