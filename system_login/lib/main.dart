import 'package:flutter/material.dart';
import 'package:system_login/user.dart';
import 'login.dart';

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
        useMaterial3: true,
        appBarTheme: AppBarTheme(color: const Color(0xFF248ce0)),
      ),
      initialRoute: "/",
      routes: {
        '/' : (context) => Login(),
        '/user' : (context) => UserPage(),
      },
      
      
    );
  }
}

