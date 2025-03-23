import 'package:assignment_car_charging_ui/welcome.dart';
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
        automaticallyImplyLeading: false,

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
              Icons.manage_accounts_rounded,
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
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "MODELS : ",
                      style: TextStyle(
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                      vertical: 5.0, horizontal: 20.0),
                  width: 500.0,
                  height: 50.0,
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
                  child: Text(
                    "ORA Good Cat",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                        fontFamily: "Montserrat"),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 0),
                  child: Image.asset("assets/images/ora-car2.png", width: 300),
                ),

                // Part Textfeild / Input -----------------------------------------------------------------

                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "STATUS : ",
                      style: TextStyle(
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700),
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
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            // border: OutlineInputBorder(
                            //   borderSide: BorderSide(
                            //     color: Colors.black,
                            //   ),
                            //   borderRadius: BorderRadius.circular(20),
                            // ),
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "Current SOC%",
                            prefixIcon: Icon(
                              Icons.battery_alert_outlined,
                              size: 20,
                            ),
                          ),
                          style:
                              const TextStyle(fontSize: 15, fontFamily: "Montserrat"),
                          controller: current,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 10.0),
                      width: 170.0,
                      height: 60.0,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: TextField(
                          decoration: const InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: "Target SOC%",
                              prefixIcon: Icon(
                                Icons.battery_charging_full_rounded,
                                size: 20,
                              )),
                          style:
                              const TextStyle(fontSize: 15, fontFamily: "Montserrat"),
                          controller: target,
                        ),
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
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: "Charg Rate(A)",
                              prefixIcon: Icon(
                                Icons.power,
                                size: 20,
                              )),
                          style:
                              const TextStyle(fontSize: 15, fontFamily: "Montserrat"),
                          controller: ratecharg,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 10.0),
                      width: 170.0,
                      height: 60.0,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: "Voltage (V)",
                              prefixIcon: Icon(
                                Icons.cable,
                                size: 20,
                              )),
                          style:
                              const TextStyle(fontSize: 15, fontFamily: "Montserrat"),
                          controller: voltage,
                        ),
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
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: "Bat Capacity",
                              prefixIcon: Icon(
                                Icons.opacity_outlined,
                                size: 20,
                              )),
                          style:
                              const TextStyle(fontSize: 15, fontFamily: "Montserrat"),
                          controller: battery,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 10.0),
                      width: 170.0,
                      height: 60.0,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: "Efficiency %",
                              prefixIcon: Icon(
                                Icons.show_chart_outlined,
                                size: 20,
                              )),
                          style:
                              const TextStyle(fontSize: 15, fontFamily: "Montserrat"),
                          controller: efficiency,
                        ),
                      ),
                    ),
                  ],
                ),

                // Part Result and Button Calculated ---------------------------------------------------
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "RESULT : ",
                      style: TextStyle(
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(colors: <Color>[
                        Color(0xFFFEE745),
                        Color.fromARGB(255, 252, 216, 36),
                        Color.fromARGB(255, 243, 171, 15),
                        //const Color(0xFFff930f)
                      ], begin: Alignment.centerLeft),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 5, spreadRadius: 2, color: Colors.grey),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(50)),
                                  child: const Icon(Icons.bolt_outlined,
                                      size: 48, color: Colors.amber)),
                            ),
                            SizedBox(
                              height: 65,
                              child: Column(
                                children: [
                                  const Text("Charging Power",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.black)),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(power,
                                          style: const TextStyle(
                                              fontFamily: "Montserrat",
                                              color: Colors.black,
                                              fontSize: 28,
                                              fontWeight: FontWeight.w600)),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            top: 7, left: 7),
                                        child: Text(
                                          "kWh",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(50)),
                                  child: const Icon(Icons.av_timer,
                                      size: 48, color: Colors.amber)),
                            ),
                            SizedBox(
                              height: 65,
                              child: Column(
                                children: [
                                  const Text("Charging Time",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.black)),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(time,
                                          style: const TextStyle(
                                              fontFamily: "Montserrat",
                                              color: Colors.black,
                                              fontSize: 28,
                                              fontWeight: FontWeight.w600)),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            top: 7, left: 7),
                                        child: Text(
                                          "hrs",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                //Design 1
                //Container(
                //  margin: const EdgeInsets.all(10),
                //  width: 350.0,
                //  height: 150.0,
                //  alignment: Alignment.center,
                //  decoration: BoxDecoration(
                //    boxShadow: [
                //      BoxShadow(
                //        color: Colors.grey,
                //        spreadRadius: 1,
                //        blurRadius: 7.5,
                //      )
                //    ],
                //    gradient: LinearGradient(colors: <Color>[
                //      const Color(0xFFFFD000),
                //      const Color(0xFFFFb700),
                //    ], begin: Alignment.topLeft),
                //    borderRadius: BorderRadius.circular(25),
                //  ),
                //  child: Container(
                //    child: Column(
                //      mainAxisAlignment: MainAxisAlignment.center,
                //      children: [
                //        Row(
                //          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //          children: [
                //            Column(
                //              children: [
                //                Text("Charging Power",
                //                    style: TextStyle(
                //                        fontSize: 18, color: Colors.black)),
                //                Icon(Icons.bolt, size: 56, color: Colors.black),
                //                Row(
                //                  mainAxisAlignment:
                //                      MainAxisAlignment.spaceAround,
                //                  children: [
                //                    Text(power,
                //                        style: TextStyle(
                //                            fontFamily: "Montserrat",
                //                            color: Colors.black,
                //                            fontSize: 28,
                //                            fontWeight: FontWeight.w600)),
                //                    Padding(
                //                      padding: const EdgeInsets.only(top: 7),
                //                      child: Text(
                //                        "   kWh",
                //                        style: TextStyle(color: Colors.black),
                //                      ),
                //                    ),
                //                  ],
                //                ),
                //              ],
                //            ),
                //            Container(
                //              child: Column(
                //                children: [
                //                  Text("Charging Time",
                //                      style: TextStyle(
                //                          fontSize: 18, color: Colors.black)),
                //                  Icon(Icons.av_timer,
                //                      size: 56, color: Colors.black),
                //                  Row(
                //                    mainAxisAlignment:
                //                        MainAxisAlignment.spaceBetween,
                //                    children: [
                //                      Text(time,
                //                          style: TextStyle(
                //                              fontFamily: "Montserrat",
                //                              color: Colors.black,
                //                              fontSize: 28,
                //                              fontWeight: FontWeight.w600)),
                //                      Padding(
                //                        padding: const EdgeInsets.only(top: 7),
                //                        child: Text(
                //                          "   hrs",
                //                          style: TextStyle(color: Colors.black),
                //                        ),
                //                      ),
                //                    ],
                //                  ),
                //                ],
                //              ),
                //            ),
                //          ],
                //        ),
                //      ],
                //    ),
                //  ),
                //),

                //Design 2
                //Row(
                //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                //  children: [
                //    Container(
                //      margin: const EdgeInsets.all(10),
                //      width: 160.0,
                //      height: 150.0,
                //      alignment: Alignment.center,
                //      decoration: BoxDecoration(
                //        gradient: LinearGradient(colors: <Color>[
                //          const Color(0xFFFFD700),
                //          const Color(0xFFff930f),
                //        ], begin: Alignment.topLeft),
                //        borderRadius: BorderRadius.circular(25),
                //      ),
                //      child: Column(
                //        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //        children: [
                //          Text("Charging Power",
                //              style: TextStyle(
                //                  fontWeight: FontWeight.w900,
                //                  color: Colors.white)),
                //          Icon(Icons.bolt, size: 56, color: Colors.white),
                //          Row(
                //            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //            children: [
                //              Text("$power",
                //                  style: TextStyle(
                //                      fontFamily: "Montserrat",
                //                      color: Colors.white,
                //                      fontSize: 24,
                //                      fontWeight: FontWeight.w900)),
                //              Padding(
                //                padding: const EdgeInsets.only(top: 7.5),
                //                child: Text("kWh",
                //                    style: TextStyle(color: Colors.white)),
                //              ),
                //            ],
                //          ),
                //        ],
                //      ),
                //    ),
                //    Container(
                //      margin: const EdgeInsets.all(10),
                //      width: 160.0,
                //      height: 150.0,
                //      alignment: Alignment.center,
                //      decoration: BoxDecoration(
                //        gradient: LinearGradient(colors: <Color>[
                //          const Color(0xFFFFD700),
                //          const Color(0xFFff930f)
                //        ], begin: Alignment.topLeft),
                //        color: Colors.white,
                //        borderRadius: BorderRadius.circular(25),
                //      ),
                //      child: Column(
                //        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //        children: [
                //          Text("Charging Time",
                //              style: TextStyle(
                //                  fontWeight: FontWeight.w900,
                //                  color: Colors.white)),
                //          Icon(Icons.av_timer, size: 56, color: Colors.white),
                //          Row(
                //            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //            children: [
                //              Text("$time",
                //                  style: TextStyle(
                //                      fontFamily: "Montserrat",
                //                      color: Colors.white,
                //                      fontSize: 24,
                //                      fontWeight: FontWeight.w900)),
                //              Padding(
                //                padding: const EdgeInsets.only(top: 7.5),
                //                child: Text("hrs",
                //                    style: TextStyle(color: Colors.white)),
                //              ),
                //            ],
                //          ),
                //        ],
                //      ),
                //    ),
                //  ],
                //),

                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          if (current.text.isNotEmpty ||
                              target.text.isNotEmpty ||
                              ratecharg.text.isNotEmpty ||
                              voltage.text.isNotEmpty ||
                              battery.text.isNotEmpty ||
                              efficiency.text.isNotEmpty) {
                            double cur = double.parse(current.text);
                            double tar = double.parse(target.text);
                            double rate = double.parse(ratecharg.text);
                            double vol = double.parse(voltage.text);
                            double bat = double.parse(battery.text);
                            double eff = double.parse(efficiency.text);

                            double calPower = (vol * rate) / 1000;
                            double calTime =
                                ((tar - cur) * bat) / (calPower * eff) / 100;

                            (debugPrint("Calculating $calTime & $calPower"));
                            setState(() {
                              power = '$calPower';
                              time = calTime.toStringAsFixed(3);
                            });
                          }else{
                            debugPrint("Error");
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 19, 16, 16),
                            elevation: 10),
                        child: Text(
                          "CALCULATE",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 16),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white, elevation: 10),
                        child: Text(
                          "BACK",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                              fontSize: 16),
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
