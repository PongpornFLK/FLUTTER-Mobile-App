import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String? token; // ประกาศ token เป็น null ไว้ก่อน

  @override
  void initState() {
    // โหลดค่าเริ่มต้น
    super.initState();
    _loadCounter(); // เรียกใช้ฟังก์ชัน _loadCounter
  }

  /// Load the initial counter value from persistent storage on start,

  Future<void> _loadCounter() async {
    // โหลดค่าจาก sharedPref
    debugPrint('loading sharedPref..');
    final prefs = await SharedPreferences.getInstance();
    token = prefs.getString('token');
    debugPrint('token: $token');
    setState(() {
      _counter = prefs.getInt('counter') ?? 0;
    });
  }

  Future<void> incrementCounter() async {
    // เพิ่มค่า counter
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', 'Success');
    debugPrint('saved token..');
    setState(() {
      _counter = (prefs.getInt('counter') ?? 0) + 1;
      prefs.setInt('counter', _counter);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text('Click me :'),
            Text('$_counter'),
            Text('token: $token'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
