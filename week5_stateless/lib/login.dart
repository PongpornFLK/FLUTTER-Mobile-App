import 'package:assignment_car_charging_ui/about.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  // use : stf
  const Login({super.key});

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  // add widget output
  String output1 = 'NICEEEE';
  String output2 = 'NICEE';

  // add controller
  final control1 = TextEditingController();
  final control2 = TextEditingController();
  final num1 = TextEditingController();
  final num2 = TextEditingController();

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      width: 160.0,
                      height: 150.0,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(colors: <Color>[
                          Color(0xFF7ef29d),
                          Color(0xFF099773),
                        ], begin: Alignment.topLeft),
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: const Column(
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
                        gradient: const LinearGradient(colors: <Color>[
                          Color(0xFFFFD700),
                          Color(0xFFff930f)
                        ], begin: Alignment.topLeft),
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text("Charging Time",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white)),
                          const Icon(Icons.av_timer, size: 56, color: Colors.white),
                          Text(output1,
                              style: const TextStyle(
                                  fontFamily: "Montserrat",
                                  color: Colors.white)),
                          const Text("hrs",
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
                      TextField(
                        // การ input แล้วแสดงผล
                        decoration: const InputDecoration(
                          labelText: "Name",
                        ),
                        controller: control1,
                      ),
                      TextField(
                        // การ input แล้วแสดงผล
                        decoration: const InputDecoration(
                          labelText: "Nickname",
                        ),
                        controller: control2,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          String input = control1.text;
                          (debugPrint(input));
                          // set state
                          setState(() {
                            output1 = 'Show $input';
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 19, 16, 16),
                        ),
                        child: Text(
                          "Show name",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 16),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          String input2 = control2.text;
                          (debugPrint(input2));
                          // set state
                          setState(() {
                            output2 = 'My name is $input2';
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 19, 16, 16),
                        ),
                        child: Text(
                          "Show nickname",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 16),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          (debugPrint("Calculating"));
                          // set state
                          setState(() {
                            output1 = 'SUIIIIIIIIII';
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 19, 16, 16),
                        ),
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
                          (debugPrint("Calculating"));
                          // set state
                          setState(() {
                            // การ setstate เป็นการสั่งให้บรรทัดที่ Widget build(BuildContext context) ทำการ build ใหม่
                            output1 = 'SEE U JAA';
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 19, 16, 16),
                        ),
                        child: Text(
                          "CALCULATE-2",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 16),
                        ),
                      ),
                      const Text(
                        'Shows the result',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        output1,
                        style: const TextStyle(fontSize: 20),
                      ),
                      Text(
                        output2,
                        style: const TextStyle(fontSize: 20),
                      ),
                      TextField(
                        decoration: const InputDecoration(labelText: 'num1'),
                        controller: num1,
                      ),
                      TextField(
                        decoration: const InputDecoration(labelText: 'num2'),
                        controller: num2,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          double input = double.parse(num1
                              .text); // tryparse คือการแปลงค่าที่รับมาเป็น double // parse
                          double input2 = double.parse(num2.text);
                          double result = input * input2;

                          (debugPrint("$result"));
                          // set state
                          setState(() {
                            output1 = 'Show $result';
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 19, 16, 16),
                        ),
                        child: Text(
                          "Cal num",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 16),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const About();
                          }));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 19, 16, 16),
                        ),
                        child: Text(
                          "Next Page",
                          style: TextStyle(
                              color: Colors.white,
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
