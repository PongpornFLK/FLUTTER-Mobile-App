import 'package:flutter/material.dart';
import 'my_homepage_sharedpref.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Shared-pref'),
    );
  }
}

// ถ้าปิด App แล้วเปิดใหม่ ค่า counter จะยังอยู่เหมือนเดิม 
// ถือว่าสำเร็จ