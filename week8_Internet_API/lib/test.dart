import 'package:assignment_car_charging_ui/detail.dart';
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
    'Product 4',
  ];

  final List<String> detail = <String>[
    'Blue',
    'Green',
    'Red',
    'Red',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 255, 222, 222)),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          color: Color.fromARGB(255, 19, 16, 16),
        ),
      ),
      home: Scaffold(
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
          child: Column(
            children: [
              Expanded(
                child: ListView.separated(
                    // มีเส้นคั่น
                    itemBuilder: (context, index) => ListTile(
                          title: Text(product[index]),
                          leading: Image.asset("assets/images/ora-car2.png"),
                          subtitle: Text(detail[index]),
                        ),
                    separatorBuilder: (context, int index) => const Divider(),
                    itemCount: product.length),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "BACK",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Detail(productId: 1)));
                },
                child: const Text(
                  "NEXT",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// ListView , ListView.Builder , ListView.custom , ListView.seperated

// Listview.Builder = ตัวสร้าง item เป็น code

// Synchronous , Asynchronous
// FutureBuilder
