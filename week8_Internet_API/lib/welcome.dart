import 'package:assignment_car_charging_ui/futures.dart';
import 'package:assignment_car_charging_ui/home.dart';
import 'package:assignment_car_charging_ui/httpweb.dart';
import 'package:assignment_car_charging_ui/regis.dart';
import 'package:assignment_car_charging_ui/test.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
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
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                width: 1000,
                height: 650,
                margin: const EdgeInsets.all(0),
                decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 7.5,
                        blurRadius: 15,
                      )
                    ],
                    gradient: LinearGradient(colors: <Color>[
                      Color(0xFFFEE745),
                      Color.fromARGB(255, 252, 216, 36),
                      Color.fromARGB(255, 243, 171, 15),
                      //const Color(0xFFff930f)
                    ], begin: Alignment.topLeft),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(60),
                        bottomRight: Radius.circular(60)),
                    color: Colors.amber),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "WELCOME TO ",
                        style: TextStyle(
                            fontSize: 24,
                            fontFamily: "Montserrat",
                            color: Colors.white,
                            fontWeight: FontWeight.w100),
                      ),
                      const Text(
                        "EV CHARGING",
                        style: TextStyle(
                            fontSize: 38,
                            fontFamily: "Montserrat",
                            color: Colors.white,
                            fontWeight: FontWeight.w900),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "APPLICATION",
                            style: TextStyle(
                                fontSize: 38,
                                fontFamily: "Montserrat",
                                color: Colors.white,
                                fontWeight: FontWeight.w900),
                          ),
                          Icon(
                            Icons.ev_station_rounded,
                            size: 52,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      Expanded(
                        child: Image.asset(
                          "assets/images/welcome-car-rmbg.png",
                          width: 500,
                        ),
                      ),
                      //TextField(
                      //  controller: nameController,
                      //  decoration: InputDecoration(
                      //      hintText: "Name",
                      //      filled: true,
                      //      fillColor: Colors.white),
                      //),
                      //TextField(
                      //  controller: passController,
                      //  decoration: InputDecoration(
                      //      hintText: "Pass",
                      //      filled: true,
                      //      fillColor: Colors.white),
                      //),
                      //ElevatedButton(
                      //  onPressed: () {
                      //    if (nameController.text.isNotEmpty ||
                      //        passController.text.isNotEmpty) {
                      //      Navigator.push(
                      //        context,
                      //        MaterialPageRoute(
                      //          builder: (context) => Login(
                      //            name: nameController.text,
                      //            pass: int.parse(passController.text),
                      //          ),
                      //        ),
                      //      );
                      //    }
                      //  },
                      //  child: Text("Confirm"),
                      //)
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shadowColor: Colors.black,
                      elevation: 20),
                  onPressed: () {
                    debugPrint("Next Login Page");
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Regis()),
                    );
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "GET START  ",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w600,
                              fontSize: 20),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 24,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0 , bottom: 20 , left: 15 , right: 15),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shadowColor: Colors.grey,
                          elevation: 10),
                      onPressed: () {
                        debugPrint("Next Login Page");
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Test()),
                        );
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "TEST",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shadowColor: Colors.grey,
                          elevation: 10),
                      onPressed: () {
                        debugPrint("Next Login Page");
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Futures()),
                        );
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "FUTURE",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shadowColor: Colors.grey,
                          elevation: 10),
                      onPressed: () {
                        debugPrint("Next Login Page");
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Httpweb()),
                        );
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "HTTP",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ], // Wraped with column --
          ),
        ),
      ),
    );
  }
}
