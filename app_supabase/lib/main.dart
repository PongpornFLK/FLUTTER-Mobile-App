import 'package:flutter/material.dart';
import 'package:app_supabase/home.dart';
import 'package:app_supabase/welcome.dart';

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
        appBarTheme: const AppBarTheme(color: Color.fromARGB(255, 19, 16, 16)),
      ),
      initialRoute: '/',
      routes: {'/': (context) => Home(), '/welcome': (context) => Welcome()},
      //home : Detail(productId: 5);
      //home: Welcome(),
    );
  }
}
