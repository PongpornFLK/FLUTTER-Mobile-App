import 'package:flutter/material.dart';
import 'package:system_login/user.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final nameController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 169, 228, 250),
      appBar: AppBar(
        title: Center(
            child: Text(
          "LOG-IN SYSTEM",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        )),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 400,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          children: [
                            TextField(
                              controller: nameController,
                              decoration: InputDecoration(
                                label: Text("Name"),
                                filled: true,
                                fillColor: Colors.grey[100],
                                prefixIcon: Icon(Icons.account_circle),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: TextField(
                                controller: passController,
                                decoration: InputDecoration(
                                    label: Text("Password"),
                                    filled: true,
                                    fillColor: Colors.grey[100],
                                    prefixIcon: Icon(Icons.lock_open_outlined)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green),
                        onPressed: () {
                          if (nameController.text.isNotEmpty &&
                              passController.text.isNotEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  "Success",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                backgroundColor: Colors.lightGreenAccent,
                              ),
                            );
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => UserPage(
                                    name: nameController.text,
                                    pass: passController.text,
                                  ),),
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  "Fail",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                backgroundColor:
                                    const Color.fromARGB(255, 182, 48, 48),
                              ),
                            );
                          }
                        },
                        child: Text(
                          "Confirm",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
