import 'package:app_supabase/widget/boxDetail.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:app_supabase/widget/container.dart';
import 'package:http/http.dart' as http;
import 'package:app_supabase/model_item/demoData.dart';

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

  late DemoData dataAPI; // ตัวแปรเก็บข้อมูลที่ได้จาก API

  //ข้อมูลที่ได้จาก API
  @override
  void initState() {
    super.initState();
    getData();
  }

  Future<DemoData> getData() async {
    // GET
    var BaseURL = "https://ipinfo.io/161.185.160.93/geo"; // url api
    var response = await http.get(Uri.parse(BaseURL));
    dataAPI = demoDataFromJson(response.body); // Json to Dart Object
    return dataAPI; // ส่งค่ากลับไปยัง FutureBuilder
  }

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
        ],
      ),
      body: Center(
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Home",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),

              BoxDetail("Title 1", 1000, 150, Colors.red),
              BoxDetail("Title 2", 2600.75, 150, Colors.blue),

              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/welcome');
                },
                child: const Text("Go to Welcome"),
              ),

              Text("Data"),
              FutureBuilder(
                // นำข้อมูลที่ได้จาก API มาแสดงผล โดยใช้ร่วมกับ snapshot
                future: getData(),
                builder: (
                  BuildContext context,
                  AsyncSnapshot<dynamic>
                  snapshot, // snapshot มาจาก AsyncSnapshot เพื่อเก็บข้อมูลที่ได้จาก Future ตามที่เรากำหนดไว้ใน FutureBuilder
                ) {
                  // ถ้าดึงข้อมูลจาก Future DemoData มาครบแล้ว
                  if (snapshot.connectionState == ConnectionState.done) {
                    var result = snapshot.data; // เก็บข้อมูลที่ได้จาก API
                    return Column(
                      children: [
                        Text("Success"),
                        Text(
                          result.ip + " " + result.city + " " + result.country,
                        ),
                      ], // แสดงข้อมูลที่ได้จาก API
                    ); // แสดงข้อความ Success
                  }
                  return LinearProgressIndicator();
                },
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
