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
              Icons.manage_accounts_rounded,
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
              Icon(Icons.account_circle_rounded),
              Text(
                "LOGIN",
                style: TextStyle(
                    fontSize: 32,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w600),
              ),
              
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                height: 300,
                width: 325,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 5,
                      blurRadius: 10,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Text("Pong"),
              ),
            ], // Wraped with column --
          ),
        ),
      ),
    );
  }
}
