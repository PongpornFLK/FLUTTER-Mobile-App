import 'package:assignment_car_charging_ui/detail.dart';
import 'package:assignment_car_charging_ui/home.dart';
import 'package:assignment_car_charging_ui/info.dart';
import 'package:assignment_car_charging_ui/regis.dart';
import 'package:assignment_car_charging_ui/welcome.dart';
import 'package:assignment_car_charging_ui/test.dart';
import 'package:assignment_car_charging_ui/futures.dart';
import 'package:assignment_car_charging_ui/httpweb.dart';
import 'package:assignment_car_charging_ui/my_listpage.dart';
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
        '/': (context) => Welcome(),
        '/home': (context) => const Home(),
        '/regis': (context) => Regis(),
        '/info': (context) => const Info(),
        '/test': (context) => const Test(),
        '/futures': (context) => const Futures(),
        '/http': (context) => const Httpweb(),
        '/detail': (context) => const Detail(productId: 3),
        '/mylist': (context) => const MyListPage(),
      },
      //home : Detail(productId: 5);
      //home: Welcome(),
    );
  }
}
