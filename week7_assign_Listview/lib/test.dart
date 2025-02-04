import 'package:assignment_car_charging_ui/home.dart';
import 'package:assignment_car_charging_ui/welcome.dart';
import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  final List<String> product = <String>[
    'Product 1',
    'Product 2',
    'Product 3',
  ];

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
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child:
              //ListView(
              //  children: [
              //    ListTile(
              //      leading: Image.asset('assets/images/ora-car2.png'),
              //      trailing: Icon(Icons.arrow_circle_right_outlined),
              //      title: Text("Back"),
              //      tileColor: Colors.yellow[600],
              //      subtitle: Text("Back to Welcome"),
              //      onTap: () => Navigator.push(
              //          context, MaterialPageRoute(builder: (context) => Welcome())),
              //    ),
              //    ListTile(
              //      leading: Icon(Icons.arrow_circle_right_rounded),
              //      title: Text("Back"),
              //      tileColor: Colors.yellow[600],
              //      subtitle: Text("Back to Welcome"),
              //      onTap: () => Navigator.push(
              //          context, MaterialPageRoute(builder: (context) => Welcome())),
              //    ),
              //
              //  ],
              //),

              ListView.separated(
                  // มีเส้นคั่น
                  itemBuilder: (context, index) => ListTile(
                        title: Text(
                          product[index],
                          style: TextStyle(fontSize: 20),
                        ),
                        leading: Image.asset("assets/images/ora-car2.png"),
                        tileColor: Colors.yellow[600],
                        subtitle: Text("Text"),
                      ),
                  separatorBuilder: (context, int index) => const Divider(),
                  itemCount: product.length),
        ),
      ),
    );
  }
}
// ListView , ListView.Builder , ListView.custom , ListView.seperated

// Listview.Builder = ตัวสร้าง item เป็น code

// Synchronous , Asynchronous
// FutureBuilder