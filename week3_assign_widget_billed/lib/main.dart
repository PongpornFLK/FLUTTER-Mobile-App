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
                icon: const Icon(Icons.list , size: 32,)),
            IconButton(
                onPressed: () {
                  debugPrint("Favorite");
                },
                icon: const Icon(Icons.favorite , size: 32,))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              // Wraped with column --
              children: [
                const SizedBox(
                  height: 14,
                ),

                Image.asset(
                  'assets/images/kfc2.png',
                  width: 200,
                ),

                const SizedBox(
                  height: 14,
                ),

                const Text("- Thanks you for supporting and giving money -"),
                const Text("KFC THAILAND"),

                const SizedBox(
                  height: 25,
                ),

                const Row(
                  children: [
                    Text(
                      "Detail",
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 14,
                ),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.calendar_month,
                          size: 32,
                        ),
                        Text(
                          "  Date",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "11 December 2024",
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    )
                  ],
                ), // Button --

                const SizedBox(
                  height: 14,
                ),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.add_location,
                          size: 32,
                        ),
                        Text(
                          "  station",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Central westgate #101",
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    )
                  ],
                ),

                const SizedBox(
                  height: 14,
                ),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.fastfood,
                          size: 32,
                        ),
                        Text(
                          "  Wing zarb",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "69 Bath",
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    )
                  ],
                ),

                const SizedBox(
                  height: 14,
                ),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.fastfood,
                          size: 32,
                        ),
                        Text(
                          "  frenfried",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "42 Bath",
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    )
                  ],
                ),

                const SizedBox(
                  height: 14,
                ),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.checklist,
                          size: 32,
                        ),
                        Text(
                          "  Total list",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "2 items",
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    )
                  ],
                ),

                const SizedBox(
                  height: 50,
                ),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Total Prices",
                          style: TextStyle(
                              fontSize: 26, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Text(
                      "111 Bath",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    )
                  ],
                ),

                const SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  onPressed: () {
                    debugPrint("Delicious");
                  },
                  child: const Text("Arloy", style: TextStyle(fontSize: 24)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
