import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> insertData() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: "https://lbhdtyjogxfbjsdddnyn.supabase.co",
    anonKey:
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxiaGR0eWpvZ3hmYmpzZGRkbnluIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDM2NzEzMDMsImV4cCI6MjA1OTI0NzMwM30.FQuAJeT9z4je_PtJpo6WVTpEySNJ0S-FK-Vd5-upB2k",
  );
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // final dem0_data = Supabase.instance.client
  //     .from('demo')
  //     .stream(primaryKey: ['id']);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              debugPrint("List menus");
            },
            icon: const Icon(
              Icons.format_list_bulleted,
              size: 32,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {
              debugPrint("My Profile");
            },
            icon: const Icon(
              Icons.account_circle,
              size: 32,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {
              debugPrint("My Profile");
            },
            icon: const Icon(
              Icons.settings_sharp,
              size: 32,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Home",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              child: const Text("Go to Welcome"),
            ),

            // StreamBuilder<List<Map<String, dynamic>>>(
            //   stream: dem0_data,
            //   builder: (context, snapshot) {
            //     if (!snapshot.hasData) {
            //       return const Center(child: CircularProgressIndicator());
            //     }
            //     final demo = snapshot.data!;

            //     return ListView.builder(
            //       itemCount: demo.length,
            //       itemBuilder: (context, index) {
            //         return ListTile(title: Text(demo[index]['detail']));
            //       },
            //     );
            //   },
            // ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: ((context) {
              return SimpleDialog(
                title: const Text("Add new data"),
                children: [
                  TextFormField(
                    onFieldSubmitted: (value) async {
                      await Supabase.instance.client.from('demo').insert({
                        'detail': value,
                      });
                    },
                  ),
                ],
              );
            }),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
