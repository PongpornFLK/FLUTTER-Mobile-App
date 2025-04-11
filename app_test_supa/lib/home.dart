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

  void addData() async {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            content: TextField(controller: textController),
            actions: [
              TextButton(
                onPressed: () {
                  saveData();
                  Navigator.pop(context);
                },
                child: Text("Save"),
              ),
            ],
          ),
    );
  }

  void saveData() async {
    await Supabase.instance.client.from('device').insert({
      'body': textController.text.toString(),
    });
    debugPrint("Data saved: ${textController.text}");
    textController.clear();
  }

  // Read Table_name from Supabase in App
  final readData = Supabase.instance.client
      .from('device')
      .stream(primaryKey: ['id']);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("Testing Connect Supabase"),
            StreamBuilder<List<Map<String, dynamic>>>(
              stream: readData,
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Center(child: CircularProgressIndicator());
                }
                final datas = snapshot.data!;
                return ListView.builder(
                  itemCount: datas.length,
                  itemBuilder: (context, index) {
                    // get individual data from list
                    final data = datas[index];
                    debugPrint("Data1: $data");
                    // get column name from list
                    final detail = data['id'];
                    debugPrint("Data2: $detail");

                    return Text(detail);
                  },
                );
              },
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: addData,
        child: Icon(Icons.add),
      ),
    );
  }
}
