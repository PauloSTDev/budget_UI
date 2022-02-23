import 'package:flutter/material.dart';

class BarChart extends StatelessWidget {
  final List<double> expenses;

  BarChart(this.expenses);

  @override
  Widget build(BuildContext context) {
    double mostExpensive = 0;
    expenses.forEach((double price) {
      if (price > mostExpensive){
        mostExpensive = price;
      }
    });

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back),
              iconSize: 30.0,
            ),
            Text(
              "Nov 10, 2019 - Nov 16, 2019",
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.2,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_forward),
              iconSize: 30.0,
            ),
          ],
        ),
        SizedBox(
          height: 30.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            //Widget própria para realizar build e apresentação do gráfico de gastos
            Bar(
              label: "Su",
              amountSpent: expenses[0],
              mostExpensive: mostExpensive,
            ),
            Bar(
              label: "Mo",
              amountSpent: expenses[1],
              mostExpensive: mostExpensive,
            ),
            Bar(
              label: "Tu",
              amountSpent: expenses[2],
              mostExpensive: mostExpensive,
            ),
            Bar(
              label: "We",
              amountSpent: expenses[3],
              mostExpensive: mostExpensive,
            ),
            Bar(
              label: "Th",
              amountSpent: expenses[4],
              mostExpensive: mostExpensive,
            ),
            Bar(
              label: "Fr",
              amountSpent: expenses[5],
              mostExpensive: mostExpensive,
            ),
            Bar(
              label: "Sa",
              amountSpent: expenses[6],
              mostExpensive: mostExpensive,
            ),
          ],
        ),
      ],
    );
  }
}

//Widget própria para realizar build e apresentação do gráfico de gastos
class Bar extends StatelessWidget {
  final String label;
  final double amountSpent;
  final double mostExpensive;

  final double _maxBarHeight = 150.0;

  Bar({this.label, this.amountSpent, this.mostExpensive});

  @override
  Widget build(BuildContext context) {
    final barHeight = amountSpent / mostExpensive * _maxBarHeight;
    return Column(
      children: [
        Text("\$${amountSpent.toStringAsFixed(2)}", style: TextStyle(fontWeight: FontWeight.w600),),
        SizedBox(height: 6.0),
        Container(
          height: barHeight,
          width: 18.0,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(6.0),
          ),
        ),
        SizedBox(height: 8.0),
        Text(label, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.0)),
      ],
    );
  }
}
