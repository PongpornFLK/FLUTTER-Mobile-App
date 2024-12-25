import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // output
  String power = '';
  String time = '';

  //Controller textfeild
  final current = TextEditingController();
  final target = TextEditingController();
  final ratecharg = TextEditingController();
  final voltage = TextEditingController();
  final battery = TextEditingController();
  final efficiency = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Appbar
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
      body: SingleChildScrollView(
        child: Padding(
          // padding overall page
          padding: const EdgeInsets.all(12.0),
          child: Center(
            child: Column(
              children: [
                // Part Topic ----------------------------------------------------------------------------
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "MODELS : ",
                      style: TextStyle(
                          fontFamily: "Montserrat", fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                  width: 500.0,
                  height: 50.0,
                  child: Text(
                    "ORA Good Cat",
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
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
                          blurRadius: 5,
                          spreadRadius: 3,
                        ),
                      ]),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 0),
                  child: Image.asset("assets/images/ora-car2.png", width: 300),
                ),
        
                // Part Textfeild / Input -----------------------------------------------------------------
        
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "STATUS : ",
                      style: TextStyle(
                          fontFamily: "Montserrat", fontWeight: FontWeight.w700),
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
                      // color: Colors.white,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          // border: OutlineInputBorder(
                          //   borderSide: BorderSide(
                          //     color: Colors.black,
                          //   ),
                          //   borderRadius: BorderRadius.circular(20),
                          // ),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Current SOC %",
                        ),
                        style: TextStyle(fontSize: 15, fontFamily: "Montserrat"),
                        controller: current,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 10.0),
                      width: 170.0,
                      height: 60.0,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Target SOC %",
                        ),
                        style: TextStyle(fontSize: 15, fontFamily: "Montserrat"),
                        controller: target,
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
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Charging Rate (A)",
                        ),
                        style: TextStyle(fontSize: 15, fontFamily: "Montserrat"),
                        controller: ratecharg,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 10.0),
                      width: 170.0,
                      height: 60.0,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Voltage (V)",
                        ),
                        style: TextStyle(fontSize: 15, fontFamily: "Montserrat"),
                        controller: voltage,
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
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Bat Capacity .kWh",
                        ),
                        style: TextStyle(fontSize: 15, fontFamily: "Montserrat"),
                        controller: battery,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 10.0),
                      width: 170.0,
                      height: 60.0,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Efficiency %",
                          
                        ),
                        style: TextStyle(fontSize: 15, fontFamily: "Montserrat"),
                        controller: efficiency,
                      ),
                    ),
                  ],
                ),
        
                // Part Result and Button Calculated ---------------------------------------------------
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "RESULT : ",
                      style: TextStyle(
                          fontFamily: "Montserrat", fontWeight: FontWeight.w700),
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
                        borderRadius: BorderRadius.circular(35),
                        boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 10,
                              spreadRadius: 5,
                            ),
                          ]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Charging Power",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white)),
                          Icon(Icons.bolt, size: 56, color: Colors.white),
                          
                          Text("$power",
                              style: TextStyle(
                                  fontFamily: "Montserrat", color: Colors.white , fontSize: 24 , fontWeight: FontWeight.w900)),
                          Text("kWh",
                              style: TextStyle(
                                  
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
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(35),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 10,
                              spreadRadius: 5,
                            ),
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Charging Time",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white)),
                          Icon(Icons.av_timer, size: 56, color: Colors.white),
                          Text("$time",
                              style: TextStyle(
                                  fontFamily: "Montserrat", color: Colors.white , fontSize: 24 , fontWeight: FontWeight.w900)),
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
                          // double cur = double.parse(current.text);
                          double tar = double.parse(target.text);
                          double rate = double.parse(ratecharg.text);
                          double vol = double.parse(voltage.text);
                          double bat = double.parse(battery.text);
                          double eff = double.parse(efficiency.text);
        
                          double cal_power = (vol * rate) / 1000;
                          double cal_time = (tar * bat / 100) / cal_power * eff;
        
                          (debugPrint("Calculating"));
                          setState(() {
                            power = '$cal_power';
                            time = cal_time.toStringAsFixed(3);
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 19, 16, 16),
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
