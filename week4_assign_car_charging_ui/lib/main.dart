import 'package:flutter/material.dart';

void main() {
  runApp(const Appme());
}

class Appme extends StatelessWidget {
  const Appme({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 222, 226, 230),
        ),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          color: Color.fromARGB(255, 19, 16, 16),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Image.asset("assets/images/evlogo5.png", width: 60),
          actions: [
            IconButton(
                onPressed: () {
                  debugPrint("List menus");
                },
                icon: const Icon(
                  Icons.format_list_bulleted,
                  size: 32,
                  color: Colors.white,
                )),
            IconButton(
              onPressed: () {
                debugPrint("My Profile");
              },
              icon: const Icon(
                Icons.account_circle,
                size: 32,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: Padding(
          // padding overall page
          padding: const EdgeInsets.all(12.0),
          child: Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Models : ",
                      style: TextStyle(fontFamily: "Montserrat"),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                      vertical: 5.0, horizontal: 20.0),
                  width: 500.0,
                  height: 50.0,
                  child: Text(
                    "ORA Good Cat",
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 22,
                        fontFamily: "Montserrat"),
                  ),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(67, 173, 181, 189),
                    border: Border.all(
                      color: Colors.black,
                      width: 0.01,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                SizedBox(height: 24),
                Image.asset("assets/images/ora-car.png"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Car Status : ",
                      style: TextStyle(fontFamily: "Montserrat"),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 10.0),
                      width: 170.0,
                      height: 60.0,
                      color: Colors.white,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          hintText: "Current SOC %",
                        ),
                        style:
                            TextStyle(fontSize: 15, fontFamily: "Montserrat"),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 10.0),
                      width: 170.0,
                      height: 60.0,
                      color: Colors.white,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          hintText: "Target SOC %",
                        ),
                        style:
                            TextStyle(fontSize: 15, fontFamily: "Montserrat"),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 10.0),
                      width: 170.0,
                      height: 60.0,
                      color: Colors.white,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          hintText: "Charging Rate (A)",
                        ),
                        style:
                            TextStyle(fontSize: 15, fontFamily: "Montserrat"),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 10.0),
                      width: 170.0,
                      height: 60.0,
                      color: Colors.white,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          hintText: "Voltage (V)",
                        ),
                        style:
                            TextStyle(fontSize: 15, fontFamily: "Montserrat"),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 10.0),
                      width: 170.0,
                      height: 60.0,
                      color: Colors.white,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          hintText: "Bat Capacity kWh",
                        ),
                        style:
                            TextStyle(fontSize: 15, fontFamily: "Montserrat"),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 10.0),
                      width: 170.0,
                      height: 60.0,
                      color: Colors.white,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          hintText: "Efficiency %",
                        ),
                        style:
                            TextStyle(fontSize: 15, fontFamily: "Montserrat"),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      width: 150.0,
                      height: 200.0,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 13, 27, 42),
                        border: Border.all(
                          color: const Color.fromARGB(255, 245, 188, 74),
                          width: 0.01,
                          style: BorderStyle.solid,
                        ),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 15,
                              spreadRadius: 10,
                            )
                          ]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Charging Power",
                              style: TextStyle(
                                  fontFamily: "Montserrat",
                                  color: Colors.white)),
                          Icon(Icons.power, size: 72, color: Colors.white),
                          Text("output",
                              style: TextStyle(
                                  fontFamily: "Montserrat",
                                  color: Colors.white)),
                          Text("kWh",
                              style: TextStyle(
                                  fontFamily: "Montserrat",
                                  color: Colors.white)),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      width: 150.0,
                      height: 200.0,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 13, 27, 42),
                          border: Border.all(
                            color: const Color.fromARGB(255, 245, 188, 74),
                            width: 0.01,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 15,
                              spreadRadius: 10,
                            )
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Charging Time",
                              style: TextStyle(
                                  fontFamily: "Montserrat",
                                  color: Colors.white)),
                          Icon(Icons.access_time_filled,
                              size: 72, color: Colors.white),
                          Text("output",
                              style: TextStyle(
                                  fontFamily: "Montserrat",
                                  color: Colors.white)),
                          Text("hrs",
                              style: TextStyle(
                                  fontFamily: "Montserrat",
                                  color: Colors.white)),
                        ],
                      ),
                    ),
                  ],
                ),
              ], // Wraped with column --
            ),
          ),
        ),
      ),
    );
  }
}
