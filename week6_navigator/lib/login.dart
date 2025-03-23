import 'package:assignment_car_charging_ui/welcome.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  final String? name;
  final int? pass;

  const Login({super.key, this.name, this.pass});

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
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
                      
                      Text("your name ${widget.name}"),
                      Text("pass ${widget.pass}"),
                      ElevatedButton(onPressed: () {
                        Navigator.pop(context);
                      }, child: const Text("Back"),)
                    ],
                  ),
                ),
              ),
            ], // Wraped with column --
          ),
        ),
      ),
    );
  }
}
