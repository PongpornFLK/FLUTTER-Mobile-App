import 'package:assignment_car_charging_ui/home.dart';
import 'package:assignment_car_charging_ui/login.dart';
import 'package:assignment_car_charging_ui/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Appme());
}

class Appme extends StatelessWidget {
  const Appme({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 255, 255, 255),
        ),
        
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          color: Color.fromARGB(255, 19, 16, 16),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/' : (context) => Welcome(),
        '/home': (context) => Home(),
        '/login': (context) => Login(),
      },
      //home: Welcome(),
    );
  }
}
