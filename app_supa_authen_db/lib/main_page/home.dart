import 'package:app_supabase/auth_service/service.dart';
import 'package:app_supabase/main_page/login.dart';
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
  final deviceStream = Supabase.instance.client
      .from('device')
      .stream(primaryKey: ['id']);

  // Get Authen service
  final authen = AuthService();

  // Log out function
  void Logout() async {
    await authen.signOut();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Login()),
    );
    debugPrint("Log out success");
  }

  @override
  Widget build(BuildContext context) {
    final currentEmail = authen.getCurrentUserEmail();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text(
              "ข้อมูลจาก Supabase",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            Expanded(
              child: StreamBuilder<List<Map<String, dynamic>>>(
                stream: deviceStream,
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  final data = snapshot.data!;

                  if (data.isEmpty) {
                    return const Center(
                      child: Text("Dont have data in Table Supabase"),
                    );
                  }

                  return ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      final item = data.take(2).toList();

                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:
                            item.map((e) {
                              return Text(
                                e['body'] + " ",
                                style: TextStyle(fontSize: 18),
                              );
                            }).toList(),
                      );
                    },
                  );
                },
              ),
            ),

            Expanded(
              child: StreamBuilder<List<Map<String, dynamic>>>(
                stream: deviceStream,
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  final data = snapshot.data!;
                  final use_where =
                      data
                          .where(
                            (e) => e['body'].toString().contains("Notebook"),
                          )
                          .toList();

                  if (data.isEmpty) {
                    return const Center(
                      child: Text("Dont have data in Table Supabase"),
                    );
                  }

                  return Column(
                    children: [
                      Text(
                        "จำนวนข้อมูลทั้งหมด: ${data.length}",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Column(
                        children:
                            use_where.map((e) {
                              return Text(
                                e['body'],
                                style: TextStyle(fontSize: 18),
                              );
                            }).toList(),
                      ),
                    ],
                  );
                },
              ),
            ),
            Expanded(
              child: StreamBuilder<List<Map<String, dynamic>>>(
                stream: deviceStream,
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  final data = snapshot.data!;
                  if (data.isEmpty) {
                    return Center(child: Text("ไม่มีข้อมูล"));
                  }

                  final itemOne = data[0];
                  final bodys = itemOne['body'];

                  final itemTwo = data[1];
                  final bodysTwo = itemTwo['body'];

                  return Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'ข้อความ: $bodys ',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(', $bodysTwo', style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  );
                },
              ),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
              child: Text("Test Back Login Page"),
            ),
            ElevatedButton(
              onPressed: () {
                Logout();
              },
              child: Text("Log Out"),
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
