import 'package:app_supabase/auth_service/service.dart';
import 'package:app_supabase/main_page/home.dart';
import 'package:app_supabase/main_page/login.dart';
import 'package:flutter/material.dart';

class Regis extends StatefulWidget {
  const Regis({super.key});

  @override
  State<Regis> createState() => _RegisState();
}

class _RegisState extends State<Regis> {
  // Get Authen
  // Class AuthService from service.dart
  final authen = AuthService();

  // Variable TextController Email , Password , Confirm Password
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirm_passwordController = TextEditingController();

  // Func sign up  button
  void signUp() async {
    final email = emailController.text;
    final password = passwordController.text;
    final confirm_password = confirm_passwordController.text;

    if (password != confirm_password) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Password not match")));

      return;
    }

    // attempt to sign up
    try {
      await authen.signUp(email, password);

      Navigator.pop(context);
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text("Register Failed : $e")));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: "Username",
                border: OutlineInputBorder(),
              ),
            ),
            TextFormField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(),
              ),
            ),
            TextFormField(
              controller: confirm_passwordController,
              decoration: InputDecoration(
                labelText: "Confirm Password",
                border: OutlineInputBorder(),
              ),
            ),

            ElevatedButton(
              onPressed: () {
                signUp();
              },
              child: Text("Sign Up"),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
              child: Text("Test Back LogIn"),
            ),
          ],
        ),
      ),
    );
  }
}
