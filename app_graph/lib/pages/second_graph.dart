import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:app_graph/model/chartData.dart';

class SecondGraph extends StatefulWidget {
  const SecondGraph({super.key});

  @override
  State<SecondGraph> createState() => _SecondGraphState();
}

class _SecondGraphState extends State<SecondGraph> {
  late TrackballBehavior _trackballBehavior;

  // Controllers for input fields
  final TextEditingController x1Controller = TextEditingController();
  final TextEditingController x2Controller = TextEditingController();
  final TextEditingController x3Controller = TextEditingController();
  final TextEditingController x4Controller = TextEditingController();
  final TextEditingController x5Controller = TextEditingController();
  final TextEditingController x6Controller = TextEditingController();
  final TextEditingController x7Controller = TextEditingController();
  final TextEditingController x8Controller = TextEditingController();
  final TextEditingController x9Controller = TextEditingController();
  final TextEditingController x10Controller = TextEditingController();

  final TextEditingController y1Controller = TextEditingController();
  final TextEditingController y2Controller = TextEditingController();
  final TextEditingController y3Controller = TextEditingController();
  final TextEditingController y4Controller = TextEditingController();
  final TextEditingController y5Controller = TextEditingController();
  final TextEditingController y6Controller = TextEditingController();
  final TextEditingController y7Controller = TextEditingController();
  final TextEditingController y8Controller = TextEditingController();
  final TextEditingController y9Controller = TextEditingController();
  final TextEditingController y10Controller = TextEditingController();

  final List<ChartData2> _data = [];

  @override
  void initState() {
    _trackballBehavior = TrackballBehavior(
      enable: true,
      tooltipSettings: InteractiveTooltip(format: 'point.x : point.y%'),
    );
    super.initState();
  }

  void _addData() {
    List<double> xValues = [
      double.tryParse(x1Controller.text) ?? 0,
      double.tryParse(x2Controller.text) ?? 0,
      double.tryParse(x3Controller.text) ?? 0,
      double.tryParse(x4Controller.text) ?? 0,
      double.tryParse(x5Controller.text) ?? 0,
      double.tryParse(x6Controller.text) ?? 0,
      double.tryParse(x7Controller.text) ?? 0,
      double.tryParse(x8Controller.text) ?? 0,
      double.tryParse(x9Controller.text) ?? 0,
      double.tryParse(x10Controller.text) ?? 0,
    ];

    List<double> yValues = [
      double.tryParse(y1Controller.text) ?? 0,
      double.tryParse(y2Controller.text) ?? 0,
      double.tryParse(y3Controller.text) ?? 0,
      double.tryParse(y4Controller.text) ?? 0,
      double.tryParse(y5Controller.text) ?? 0,
      double.tryParse(y6Controller.text) ?? 0,
      double.tryParse(y7Controller.text) ?? 0,
      double.tryParse(y8Controller.text) ?? 0,
      double.tryParse(y9Controller.text) ?? 0,
      double.tryParse(y10Controller.text) ?? 0,
    ];

    if (xValues.any((x) => x == 0) || yValues.any((y) => y == 0)) {
      _showErrorDialog('Please enter all values');
      return;
    }

    setState(() {
      _data.clear();
      for (int i = 0; i < xValues.length; i++) {
        _data.add(ChartData2(x: xValues[i], y: yValues[i]));
      }
    });
  }

  void _clearData() {
    setState(() {
      _data.clear();
      x1Controller.clear();
      x2Controller.clear();
      x3Controller.clear();
      x4Controller.clear();
      x5Controller.clear();
      x6Controller.clear();
      x7Controller.clear();
      x8Controller.clear();
      x9Controller.clear();
      x10Controller.clear();
      y1Controller.clear();
      y2Controller.clear();
      y3Controller.clear();
      y4Controller.clear();
      y5Controller.clear();
      y6Controller.clear();
      y7Controller.clear();
      y8Controller.clear();
      y9Controller.clear();
      y10Controller.clear();
    });
  }

  void _calculate() {
    if (_data.isEmpty) {
      _showErrorDialog('No data to calculate');
      return;
    }

    double sumX = 0;
    double sumY = 0;
    double sumXY = 0;
    double sumX2 = 0;

    for (var data in _data) {
      sumX += data.x;
      sumY += data.y;
      sumXY += data.x * data.y;
      sumX2 += data.x * data.x;
    }

    int n = _data.length;
    double b = (n * sumXY - sumX * sumY) / (n * sumX2 - sumX * sumX);
    double a = (sumY - b * sumX) / n;

    setState(() {
      for (var data in _data) {
        data.maxLineY = a + b * data.x;
        data.minLineY = a + b * data.x;
      }
    });
  }

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            backgroundColor: Colors.white,
            title: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 5.0),
                  child: Icon(Icons.error, color: Colors.red, size: 64),
                ),
                Text(
                  'Error',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            content: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text(message)],
            ),
            actions: [
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    elevation: 1,
                  ),
                  child: Text('Close', style: TextStyle(color: Colors.black)),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
            ],
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // X Values Input
              Text(
                'X Values',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: x1Controller,
                      decoration: InputDecoration(
                        labelText: 'X1',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: TextFormField(
                      controller: x2Controller,
                      decoration: InputDecoration(
                        labelText: 'X2',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: TextFormField(
                      controller: x3Controller,
                      decoration: InputDecoration(
                        labelText: 'X3',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: x4Controller,
                      decoration: InputDecoration(
                        labelText: 'X4',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: TextFormField(
                      controller: x5Controller,
                      decoration: InputDecoration(
                        labelText: 'X5',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: TextFormField(
                      controller: x6Controller,
                      decoration: InputDecoration(
                        labelText: 'X6',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: x7Controller,
                      decoration: InputDecoration(
                        labelText: 'X7',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: TextFormField(
                      controller: x8Controller,
                      decoration: InputDecoration(
                        labelText: 'X8',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: TextFormField(
                      controller: x9Controller,
                      decoration: InputDecoration(
                        labelText: 'X9',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: x10Controller,
                      decoration: InputDecoration(
                        labelText: 'X10',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Y Values Input
              Text(
                'Y Values',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: y1Controller,
                      decoration: InputDecoration(
                        labelText: 'Y1',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: TextFormField(
                      controller: y2Controller,
                      decoration: InputDecoration(
                        labelText: 'Y2',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: TextFormField(
                      controller: y3Controller,
                      decoration: InputDecoration(
                        labelText: 'Y3',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: y4Controller,
                      decoration: InputDecoration(
                        labelText: 'Y4',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: TextFormField(
                      controller: y5Controller,
                      decoration: InputDecoration(
                        labelText: 'Y5',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: TextFormField(
                      controller: y6Controller,
                      decoration: InputDecoration(
                        labelText: 'Y6',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: y7Controller,
                      decoration: InputDecoration(
                        labelText: 'Y7',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: TextFormField(
                      controller: y8Controller,
                      decoration: InputDecoration(
                        labelText: 'Y8',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: TextFormField(
                      controller: y9Controller,
                      decoration: InputDecoration(
                        labelText: 'Y9',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: y10Controller,
                      decoration: InputDecoration(
                        labelText: 'Y10',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: _addData, child: Text('Add Data')),
                  ElevatedButton(
                    onPressed: _calculate,
                    child: Text('Calculate'),
                  ),
                  ElevatedButton(onPressed: _clearData, child: Text('Clear')),
                ],
              ),
              SizedBox(height: 20),

              // Chart
              Container(
                height: 400,
                child: SfCartesianChart(
                  trackballBehavior: _trackballBehavior,
                  primaryXAxis: NumericAxis(),
                  primaryYAxis: NumericAxis(),
                  series: <CartesianSeries<ChartData2, double>>[
                    LineSeries<ChartData2, double>(
                      dataSource: _data,
                      xValueMapper: (ChartData2 data, _) => data.x,
                      yValueMapper: (ChartData2 data, _) => data.y,
                      name: 'Data Points',
                    ),
                    LineSeries<ChartData2, double>(
                      dataSource: _data,
                      xValueMapper: (ChartData2 data, _) => data.x,
                      yValueMapper: (ChartData2 data, _) => data.maxLineY,
                      name: 'Regression Line',
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
