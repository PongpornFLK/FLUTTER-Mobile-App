import 'package:assignment_car_charging_ui/info.dart';
import 'package:assignment_car_charging_ui/welcome.dart';
import 'package:flutter/material.dart';

class Regis extends StatefulWidget {
  @override
  State<Regis> createState() => _Regis();
}

class _Regis extends State<Regis> {
  final nameController = TextEditingController();
  final passController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Appbar
        title: Image.asset("assets/images/evlogo5.png", width: 60),
        automaticallyImplyLeading: false, // close arrow on top (recomment)
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
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Row(
                  children: [
                    Text(
                      "REGISTER",
                      style: TextStyle(
                          fontSize: 38,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w600),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Icon(
                        Icons.login_rounded,
                        size: 40,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Text(
                    "Please fill in complete information.",
                    style: TextStyle(fontSize: 18, fontFamily: "Montserrat"),
                  ),
                ],
              ),
              Container(
                height: 400,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 15,
                        spreadRadius: 1,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 15),
                      child: TextField(
                        controller: nameController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.account_circle_rounded),
                          labelText: "Enter your name",
                          filled: true,
                          fillColor: Colors.grey[100],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        autofocus: true,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 15),
                      child: TextField(
                        controller: passController,
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          labelText: "Password",
                          filled: true,
                          fillColor: Colors.grey[100],
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 15),
                      child: TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.mail),
                          labelText: "Email",
                          filled: true,
                          fillColor: Colors.grey[100],
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 15),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        controller: phoneController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.phone),
                          labelText: "Phone",
                          filled: true,
                          fillColor: Colors.grey[100],
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size.fromHeight(50),
                          backgroundColor: Colors.amber[300],
                          shadowColor: Colors.black,
                          elevation: 5),
                      onPressed: () {
                        if (emailController.text.isNotEmpty ||
                            phoneController.text.isNotEmpty ||
                            nameController.text.isNotEmpty ||
                            passController.text.isNotEmpty) {
                          debugPrint("Next Info page");
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Info(
                                mail: emailController.text,
                                name: nameController.text,
                                pass: passController.text,
                                phone: int.parse(phoneController.text),
                              ),
                            ),
                          );
                        } else {
                          debugPrint("Please fill in complete information.");
                        }
                      },
                      child: Text(
                        "SIGN UP",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Montserrat',
                            fontSize: 20),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size.fromHeight(50),
                          backgroundColor: Colors.black,
                          shadowColor: Colors.black,
                          elevation: 5),
                      onPressed: () {
                        debugPrint("Back to Welcome page");
                        Navigator.pop(context);
                      },
                      child: Text(
                        "BACK",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Montserrat',
                            fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
            ], // Wraped with column
          ),
        ),
      ),
    );
  }
}
