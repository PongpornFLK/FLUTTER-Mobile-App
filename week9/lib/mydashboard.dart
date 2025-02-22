// import 'package:flutter/material.dart';

// class MyDashBoard extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('My Dashboard'),
//       ),
//       body: Center(
//         child: Text('Welcome to My !'),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class MyDashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Dashboard'),
      ),
      body: Center(
        child: SizedBox(
          height: 300,
          width: 300,
          child: ScatterChart(
            ScatterChartData(
              scatterSpots: [
                ScatterSpot(1, 1),
                ScatterSpot(3, 2),
                ScatterSpot(4, 3),
                ScatterSpot(6, 5),
                ScatterSpot(8, 6),
              ],
              minX: 0,
              maxX: 10,
              minY: 0,
              maxY: 10,
              borderData: FlBorderData(show: true),
              gridData: FlGridData(show: true),
              titlesData: FlTitlesData(
                leftTitles:
                    AxisTitles(sideTitles: SideTitles(showTitles: true)),
                bottomTitles:
                    AxisTitles(sideTitles: SideTitles(showTitles: true)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
