import 'package:app_getx/view/item.dart';
import 'package:app_getx/view/shop.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:get/get.dart';

Future<void> main() async {
  // Settup Supabase
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: "https://lbhdtyjogxfbjsdddnyn.supabase.co",
    anonKey:
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxiaGR0eWpvZ3hmYmpzZGRkbnluIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDM2NzEzMDMsImV4cCI6MjA1OTI0NzMwM30.FQuAJeT9z4je_PtJpo6WVTpEySNJ0S-FK-Vd5-upB2k",
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Shopping(),
    );
    
  }
}
