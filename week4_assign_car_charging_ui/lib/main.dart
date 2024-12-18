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
              seedColor: const Color.fromARGB(255, 255, 222, 222)),
          useMaterial3: true,
          appBarTheme:
              const AppBarTheme(color: Color.fromARGB(255, 255, 255, 255))),
      home: Scaffold(
        appBar: AppBar(
          title: Image.asset("assets/images/kfclogo.png", width: 100),
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
        body: Padding(
          // padding overall page
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              // Wraped with column --
              
            ),
          ),
        ),
      ),
    );
  }
}
