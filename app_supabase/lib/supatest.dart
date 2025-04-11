import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

// test get supabase data
Future<void> insertData() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: "https://lbhdtyjogxfbjsdddnyn.supabase.co",
    anonKey:
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxiaGR0eWpvZ3hmYmpzZGRkbnluIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDM2NzEzMDMsImV4cCI6MjA1OTI0NzMwM30.FQuAJeT9z4je_PtJpo6WVTpEySNJ0S-FK-Vd5-upB2k",
  );
}

class SupaTest extends StatelessWidget {
  SupaTest({super.key});

  // CREATE - Demo Table / Save in Supabase
  final textController = TextEditingController();

  get context => null;

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

  // READ - Demo from Supabase in App

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("Testing Connect Supabase"),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/welcome');
              },
              child: const Text("Go to Welcome"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addDemo,
        child: Icon(Icons.add),
      ),
    );
  }
}
