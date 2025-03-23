import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<String> fetchData() async {
  final response =
      await http.get(Uri.parse('https://itpart.net/mobile/api/product0.php'));

  if (response.statusCode == 200) {
    final jSONbody = json.decode(response.body);
    String strBody = response.body.toString();
    debugPrint(strBody);

    return strBody;
  } else {
    throw Exception('problem..');
  }
}

class Httpweb extends StatefulWidget {
  const Httpweb({super.key});

  @override
  State<Httpweb> createState() => _HttpwebState();
}

class _HttpwebState extends State<Httpweb> {
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
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            FutureBuilder(
              future: fetchData(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text('Result: ${snapshot.data}',
                      style: const TextStyle(
                          fontSize: 14,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.bold));
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }
                return const CircularProgressIndicator();
              },
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Back"),
            ),
          ],
        ),
      ),
    );
  }
}

// FutureBuilder คือ Widget ที่ใช้ในการสร้าง UI โดยใช้ข้อมูลจาก Future ซึ่งเป็นการดึงข้อมูลจาก API มาแสดงผล
