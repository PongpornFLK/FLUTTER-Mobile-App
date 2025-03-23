import 'package:flutter/material.dart';

class Futures extends StatefulWidget {
  const Futures({super.key});

  @override
  State<Futures> createState() => _FuturesState();
}

class _FuturesState extends State<Futures> {
  // Simulating an asynchronous operation that returns a Future
  Future<String> fetchData() async {
    await Future.delayed(const Duration(seconds: 3));
    return "Hello, FutureBuilder!";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text('FutureBuilder Page'),
      ),
      body: Center(
        child: Column(
          children: [
            FutureBuilder(
              future: fetchData(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text('Result: ${snapshot.data}',
                      style: const TextStyle(fontSize: 20));
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }
                return const CircularProgressIndicator();
              },
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Back"),
            ),
          ],
        ),
      ),
    );
  }
}
