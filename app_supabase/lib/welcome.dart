import 'package:app_supabase/home.dart';
import 'package:flutter/material.dart';
import 'model_item/menu.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  // สร้างตัวแปร menu เพื่อเก็บข้อมูลที
  List<FoodMenu> menu = [
    FoodMenu("ข้าวผัด", "50", "assets/images/p1.jpg"),
    FoodMenu("ข้าวมันไก่", "60", "assets/images/p2.jpg"),
    FoodMenu("ข้าวหมูแดง", "70", "assets/images/p3.jpg"),
    FoodMenu("ข้าวไข่เจียว", "40", "assets/images/p4.jpg"),
    FoodMenu("ข้าวต้ม", "30", "assets/images/p5.jpg"),
  ];

  int number = 0;

  void addNumber() {
    setState(() {
      number++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Appbar
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
      body: Center(
        child: Column(
          children: [
            Text(
              "Welcome",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              number.toString(),
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
              child: Text("Go to Home"),
            ),
            ElevatedButton(
              onPressed: () {
                addNumber();
              },
              child: Text("insert data"),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: menu.length,
                itemBuilder: (BuildContext context, int index) {
                  FoodMenu food = menu[index];
                  return ListTile(
                    title: Text("ชื่ออาหาร : ${food.name}"),
                    subtitle: Text("ราคา : ${food.price}" + " บาท"),
                    leading: Image.asset(food.img),
                    trailing: Icon(Icons.arrow_forward),
                    onTap: () {
                      debugPrint("You click ${food.name}");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
