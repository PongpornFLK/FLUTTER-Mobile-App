import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartData {
  final double x;
  final double y;
  ChartData(this.x, this.y);
}

class Graph extends StatefulWidget {
  const Graph({super.key});

  @override
  State<Graph> createState() => _GraphState();
}

class _GraphState extends State<Graph> {
  late TrackballBehavior _trackballBehavior;
  int selectedPageIndex = 0;

  final TextEditingController _xController = TextEditingController();
  final TextEditingController _yController = TextEditingController();

  List<ChartData> _data = [];

  // Part Select Page - Drawer
  static const List<Widget> pages = [Graph(), Graph(), Graph()];

  void onItemTapped(int index) {
    setState(() {
      selectedPageIndex = index;
    });
  }

  // Part Graph
  @override
  void initState() {
    _trackballBehavior = TrackballBehavior(
      enable: true,
      tooltipSettings: InteractiveTooltip(format: 'point.x : point.y%'),
    );
    super.initState();
  }

  void _addData() {
    setState(() {
      _data.add(
        ChartData(
          double.parse(_xController.text),
          double.parse(_yController.text),
        ),
      );
    });
  }

  void _clearData() {
    setState(() {
      _data.clear();
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
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.yellow[400],
        elevation: 8.0,
        shadowColor: Colors.black.withOpacity(0.8),
        title: Text('FLK', style: TextStyle(color: Colors.black)),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(Icons.menu, color: Colors.black),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.yellow),
              accountName: Text("FLK"),
              accountEmail: Text("FLK@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Image.asset('assets/images/profile.png'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.auto_graph_outlined),
              title: Text("Graph"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
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
                        controller: _xController,
                        decoration: InputDecoration(
                          labelText: 'X',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: TextFormField(
                        controller: _yController,
                        decoration: InputDecoration(
                          labelText: 'Y',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
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
                        // controller: _xController,
                        decoration: InputDecoration(
                          labelText: 'maxLineX',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: TextFormField(
                        // controller: _yController,
                        decoration: InputDecoration(
                          labelText: 'maxLineY',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
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
