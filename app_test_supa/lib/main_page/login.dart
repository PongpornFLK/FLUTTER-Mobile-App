import 'package:app_supabase/auth_service/service.dart';
import 'package:app_supabase/main_page/home.dart';
import 'package:app_supabase/main_page/register.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // Get Authen
  // Class AuthService from service.dart
  final authen = AuthService();

  // Variable TextController Email , Password
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // Func loggin button
  void login() async {
    final email = emailController.text;
    final password = passwordController.text;

    // attempt to sign in
    try {
      await authen.signIn(email, password);
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text("Login failed: $e")));
      }
    }

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Homepage()),
    );
    debugPrint("Login success");
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

            ElevatedButton(
              onPressed: () {
                login();
              },
              child: Text("Login"),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Regis()),
                );
              },
              child: Text("Sign Up"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Homepage()),
                );
              },
              child: Text("Test Go Home"),
            ),
          ],
        ),
      ),
    );
  }
}
