// gate = this will continously listen for auth stantus changes

/*  unauthen => Login Page
    authen => Home Page    */

import 'package:app_supabase/main_page/home.dart';
import 'package:app_supabase/main_page/login.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter/material.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      // Listen for auth state changes
      stream: Supabase.instance.client.auth.onAuthStateChange,

      // Builder approaches on auth state 
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(body: Center(child: CircularProgressIndicator()));
        }

        // chechk if value session currently has data
        final session = snapshot.hasData ? snapshot.data!.session : null;

        if(session != null) {
          return Homepage(); // Authenticated
        } else {
          return Login(); // Not authenticated
        }
        
      },
    );
  }
}
