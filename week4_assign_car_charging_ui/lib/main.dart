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
            IconButton(
              onPressed: () {
                debugPrint("My Profile");
              },
              icon: const Icon(
                Icons.settings_sharp,
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
                      "MODELS : ",
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
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 15,
                          spreadRadius: 8,
                        )
                      ]),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 0),
                  child: Image.asset("assets/images/ora-car2.png", width: 300),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "CAR STATUS : ",
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
                          hintText: "Bat Capacity .kWh",
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "RESULT : ",
                      style: TextStyle(fontFamily: "Montserrat"),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      width: 160.0,
                      height: 150.0,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: <Color>[
                          const Color(0xFF7ef29d),
                          const Color(0xFF099773),
                        ], begin: Alignment.topLeft),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Charging Power",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white)),
                          Icon(Icons.bolt, size: 56, color: Colors.white),
                          Text("-------",
                              style: TextStyle(
                                  fontFamily: "Montserrat",
                                  color: Colors.white)),
                          Text("kWh",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white)),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      width: 160.0,
                      height: 150.0,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: <Color>[
                          const Color(0xFFFFD700),
                          const Color(0xFFff930f)
                        ], begin: Alignment.topLeft),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Charging Time",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white)),
                          Icon(Icons.av_timer, size: 56, color: Colors.white),
                          Text("-------",
                              style: TextStyle(
                                  fontFamily: "Montserrat",
                                  color: Colors.white)),
                          Text("hrs",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white)),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 90),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ElevatedButton(
                        child: Text(
                          "CALCULATE",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 16),
                        ),
                        onPressed: () {
                          (debugPrint("Calculating"));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 19, 20, 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ], // Wraped with column --
            ),
          ),
        ),
      ),
    );
  }
}
