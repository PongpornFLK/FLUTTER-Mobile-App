import 'package:flutter/material.dart';

void main() {
  runApp(const Appme());
}

class Appme extends StatelessWidget {
  const Appme({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hi",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 155, 232, 255))
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('MyApp'),
        ),
        body: Text(
          "Testing",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

