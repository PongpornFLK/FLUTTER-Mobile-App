import 'package:app_supabase/providers/billed_provider.dart';
import 'package:app_supabase/providers/transaction_provider.dart';
import 'package:app_supabase/supatest.dart';
import 'package:flutter/material.dart';
import 'package:app_supabase/home.dart';
import 'package:app_supabase/welcome.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context){
      return TransactionProvider(); // สร้าง Provider
    }),
    ChangeNotifierProvider(create: (context){
      return BilledProvider(); // สร้าง Provider
    }),
  ], child: const Appme(),)); 
}

class Appme extends StatelessWidget {
  const Appme({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 255, 255, 255),
        ),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(color: Color.fromARGB(255, 19, 16, 16)),
      ),
      initialRoute: '/',
      routes: {'/': (context) => Home(), '/welcome': (context) => Welcome() , '/supa' : (context) => SupaTest(),},
      //home : Detail(productId: 5);
      //home: Welcome(),
    );
  }
}
