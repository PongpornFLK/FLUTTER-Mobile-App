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
              seedColor: const Color.fromARGB(255, 255, 244, 180)),
          useMaterial3: true,
          appBarTheme:
              const AppBarTheme(color: Color.fromARGB(255, 255, 217, 114))),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('MyApp'),
          actions: [
            IconButton(
              onPressed: () {
                debugPrint("menu");
              },
              icon: const Icon(Icons.menu),
            ),
            IconButton(
              onPressed: () {
                debugPrint("menu");
              },
              icon: const Icon(Icons.wallet),
            ),
            IconButton(
              onPressed: () {
                debugPrint("menu");
              },
              icon: const Icon(Icons.phone),
            ),
          ],
        ),
        body: Center(
          child: Column(
            // Wraped with column --
            children: [
              const Text("Pongporn"),
              const Text("cs65"),

              Image.network(
                  'https://wallpaper.forfun.com/fetch/9a/9afb26229ec0e7328b6fd6462b247dc1.jpeg?w=1470&r=0.5625'),

              SizedBox(
                height: 14,
              ),

              Image.asset(
                'assets/images/img1.jpeg',
                width: 120,
              ),

              const Icon(
                Icons.headphones,
                size: 25,
              ),

              IconButton(
                      onPressed: () {
                        debugPrint("Error!!!");
                      },
                      icon: const Icon(Icons.warning)),

              SizedBox(
                height: 14,
              ),

              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                  ElevatedButton(
                    onPressed: () {
                      debugPrint("Success");
                    },
                    child: const Text(
                      'Submit',
                      style: TextStyle(
                          fontSize: 20, color: Color.fromARGB(255, 49, 168, 3)),
                    ),
                  ),

                  ElevatedButton(
                    onPressed: () {
                      debugPrint("Success");
                    },
                    child: const Text(
                      'Exit',
                      style: TextStyle(
                          fontSize: 20, color: Color.fromARGB(255, 240, 44, 18)),
                    ),
                  ),
                ],
              ), // Button --
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint('Add');
          },
          child: Text(
            "+",
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
