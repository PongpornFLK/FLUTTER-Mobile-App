import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {

  final String? name;
  final String? pass;

  const UserPage({super.key, this.name, this.pass});

  @override
  State<UserPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DATA"),
        backgroundColor: const Color.fromARGB(255, 169, 228, 250),
      ),
      body: Center(
        child: Padding(padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.waving_hand_rounded , color: Colors.amber, size: 40,),
                  Text(" Hi , ${widget.name}  ${widget.pass}" , style: TextStyle(fontSize: 22),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
