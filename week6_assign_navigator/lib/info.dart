import 'package:assignment_car_charging_ui/home.dart';
import 'package:flutter/material.dart';

class Info extends StatefulWidget {
  final String? mail;
  final String? name;
  final String? pass;
  final int? phone;

  const Info({super.key, this.name, this.pass, this.mail, this.phone});

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
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
            ),
          ),
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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Hi , ${widget.name}",
                          style: TextStyle(
                              fontSize: 32,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w600),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Icon(
                            Icons.waving_hand_rounded,
                            color: Colors.yellow,
                            size: 36,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        children: [
                          Icon(Icons.settings),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Text(
                              "This is your Information",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: "Montserrat",
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.account_circle_outlined,
                size: 132,
              ),
              
              Container(
                
                height: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Username",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "Montserrat",
                                      color: Colors.black45),
                                ),
                              ],
                            ),
                            Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.15),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Text(
                                      "${widget.name}",
                                      style: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Password",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "Montserrat",
                                      color: Colors.black45),
                                ),
                              ],
                            ),
                            Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.15),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Text(
                                      "${widget.pass}",
                                      style: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "E-mail",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "Montserrat",
                                      color: Colors.black45),
                                ),
                              ],
                            ),
                            Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.15),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Text(
                                      "${widget.mail}",
                                      style: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Phone-number",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "Montserrat",
                                      color: Colors.black45),
                                ),
                              ],
                            ),
                            Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.15),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Text(
                                      "${widget.phone}",
                                      style: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        elevation: 7.5,
                        shadowColor: Colors.black),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "BACK",
                      style: TextStyle(color: Colors.white , fontSize: 16 , fontFamily: "Montserrat" , fontWeight: FontWeight.bold),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber[300],
                        elevation: 7.5,
                        shadowColor: Colors.grey),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Home(),
                        ),
                      );
                    },
                    child: Text(
                      "NEXT",
                      style: TextStyle(color: Colors.black , fontSize: 16 , fontFamily: "Montserrat" , fontWeight: FontWeight.bold ),
                    ),
                  ),
                ],
              ),
            ], // Wraped with column --
          ),
        ),
      ),
    );
  }
}
