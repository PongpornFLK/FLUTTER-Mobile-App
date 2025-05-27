import 'package:app_graph/pages/pdf.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:app_graph/model/chartData.dart';
import 'dart:math';

class Graph extends StatefulWidget {
  const Graph({super.key});

  @override
  State<Graph> createState() => _GraphState();
}

class _GraphState extends State<Graph> {
  late TrackballBehavior _trackballBehavior;

  final TextEditingController xController = TextEditingController();
  final TextEditingController yController = TextEditingController();
  final TextEditingController maxLineYController = TextEditingController();
  final TextEditingController minLineYController = TextEditingController();

  List<ChartData> _data = [];

  // Part Graph Button
  @override
  void initState() {
    _trackballBehavior = TrackballBehavior(
      enable: true,
      tooltipSettings: InteractiveTooltip(format: 'point.x : point.y%'),
    );
    super.initState();
  }

  void _addData() {
    if (xController.text.isNotEmpty &&
        yController.text.isNotEmpty &&
        maxLineYController.text.isNotEmpty &&
        minLineYController.text.isNotEmpty) {
      double x = double.tryParse(xController.text) ?? 0;
      double y = double.tryParse(yController.text) ?? 0;
      double maxLineY = double.tryParse(maxLineYController.text) ?? 0;
      double minLineY = double.tryParse(minLineYController.text) ?? 0;

      setState(() {
        _data.add(ChartData(x, y, maxLineY, minLineY));
      });
    } else {
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
                children: [Text('Please enter all fields')],
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
  }

  void _clearData() {
    setState(() {
      _data.clear();
      maxLineYController.clear();
      minLineYController.clear();
      xController.clear();
      yController.clear();
    });
  }

  void _deletePoint(int index) {
    setState(() {
      _data.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text("Graph", style: TextStyle(color: Colors.black)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: xController,
                        decoration: InputDecoration(
                          labelText: 'X',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          fillColor: Colors.grey.withOpacity(0.1),
                          filled: true,
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: TextFormField(
                        controller: yController,
                        decoration: InputDecoration(
                          labelText: 'Y',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          fillColor: Colors.grey.withOpacity(0.1),
                          filled: true,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: maxLineYController,
                        decoration: InputDecoration(
                          labelText: 'maxLineY',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          fillColor: Colors.grey.withOpacity(0.1),
                          filled: true,
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: TextFormField(
                        controller: minLineYController,
                        decoration: InputDecoration(
                          labelText: 'minLineY',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          fillColor: Colors.grey.withOpacity(0.1),
                          filled: true,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    elevation: 1,
                  ),
                  onPressed: () {
                    _addData();
                  },
                  child: Text('Add', style: TextStyle(color: Colors.black)),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    elevation: 1,
                  ),
                  onPressed: () {
                    _clearData();
                  },
                  child: Text('Clear', style: TextStyle(color: Colors.black)),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    elevation: 1,
                  ),
                  onPressed: () {
                    _deletePoint(_data.length - 1);
                  },
                  child: Text('Delete', style: TextStyle(color: Colors.black)),
                ),
              ],
            ),
          ),

          Expanded(
            child: Container(
              padding: EdgeInsets.only(right: 16),
              child: SfCartesianChart(
                trackballBehavior: _trackballBehavior,
                tooltipBehavior: TooltipBehavior(enable: true),
                legend: Legend(isVisible: true),
                primaryXAxis: NumericAxis(
                  minimum: 0, // จุดต่ำสุดของแกน
                  maximum: 60, // จุดสูงสุดของแกน
                  interval: 10, // ระยะห่างของแต่ละแกน
                  majorGridLines: MajorGridLines(
                    color: Colors.grey.withOpacity(0.3),
                    width: 1,
                  ),
                ),
                primaryYAxis: NumericAxis(
                  minimum: 8,
                  maximum: 30,
                  majorGridLines: MajorGridLines(
                    color: Colors.grey.withOpacity(0.3),
                    width: 1,
                  ),
                  plotBands: <PlotBand>[
                    PlotBand(
                      start: double.tryParse(maxLineYController.text) ?? 0,
                      end: double.tryParse(maxLineYController.text) ?? 0,
                      borderColor: Colors.red,
                      borderWidth:
                          double.tryParse(maxLineYController.text) != 0 &&
                                  double.tryParse(minLineYController.text) != 0
                              ? 2
                              : 0,
                    ),
                    PlotBand(
                      start: double.tryParse(minLineYController.text) ?? 0,
                      end: double.tryParse(minLineYController.text) ?? 0,
                      borderColor: Colors.red,
                      borderWidth:
                          double.tryParse(maxLineYController.text) != 0 &&
                                  double.tryParse(minLineYController.text) != 0
                              ? 2
                              : 0,
                    ),
                  ],
                ),
                indicators: [
                  RsiIndicator<dynamic, dynamic>(
                    period: 5,
                    seriesName: 'bed',
                    overbought: 26,
                    oversold: 10,
                  ),
                ],
                series: <LineSeries>[
                  LineSeries<ChartData, double>(
                    color: Colors.black,
                    markerSettings: MarkerSettings(
                      isVisible: true,
                      shape: DataMarkerType.circle,
                    ),
                    dataSource: _data,
                    xValueMapper: (ChartData data, _) => data.x,
                    yValueMapper: (ChartData data, _) => data.y,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
