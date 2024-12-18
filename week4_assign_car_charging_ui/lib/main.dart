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
          seedColor: const Color.fromARGB(255, 222, 226, 230),
        ),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          color: Color.fromARGB(255, 19, 16, 16),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Image.asset("assets/images/evlogo5.png", width: 60),
          actions: [
            IconButton(
                onPressed: () {
                  debugPrint("List menus");
                },
                icon: const Icon(
                  Icons.format_list_bulleted,
                  size: 32,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {
                  debugPrint("My Profile");
                },
                icon: const Icon(
                  Icons.account_circle,
                  size: 32,
                  color: Colors.white,
                ))
          ],
        ),
        body: Padding(
          // padding overall page
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 24),
                Image.asset("assets/images/ora-car.png"),
                Container(
                  margin: const EdgeInsets.all(20.0),
                  width: 500.0,
                  height: 50.0,
                  child: Text(
                    "Models  :  ORA Good Cat",
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 22 , fontFamily: "Montserrat"),
                  ),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(67, 173, 181, 189),
                    border: Border.all(
                      color: Colors.black,
                      width: 0.01,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(10)
                  ),
                ),

                TextFieldTapRegion(child:
                  
                ),
              ], // Wraped with column --
            ),

            
          ),
        ),
      ),
    );
  }
}
