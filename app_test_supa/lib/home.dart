import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  // Create Table_name , Save in Supabase
  final textController = TextEditingController();

  void addDemo() async {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            content: TextField(controller: TextEditingController()),
            actions: [
              TextButton(
                onPressed: () {
                  saveDemo();
                  Navigator.pop(context);
                },
                child: Text("Save"),
              ),
            ],
          ),
    );
  }

  void saveDemo() async {
    await Supabase.instance.client.from('device').insert({
      'body': textController.text,
    });
  }

  // Read Table_name from Supabase in App

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(children: [Text("Testing Connect Supabase")])),
      floatingActionButton: FloatingActionButton(
        onPressed: addDemo,
        child: Icon(Icons.add),
      ),
    );
  }
}
