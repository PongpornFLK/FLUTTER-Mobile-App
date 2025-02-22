import 'package:flutter/material.dart';
import 'mydashboard.dart';

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
              seedColor: const Color.fromARGB(255, 255, 222, 222)),
          useMaterial3: true,
          appBarTheme:
              const AppBarTheme(color: Color.fromARGB(255, 255, 255, 255))),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/mydashboard': (context) => MyDashBoard(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                debugPrint("Show list");
              },
              icon: Icon(
                Icons.list,
                size: 32,
              )),
          IconButton(
              onPressed: () {
                debugPrint("Favorite");
              },
              icon: Icon(
                Icons.favorite,
                size: 32,
              ))
        ],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyDashBoard()),
            );
          },
          child: Text('Go to My Dashboard'),
        ),
      ),
    );
  }
}
