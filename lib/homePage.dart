import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'login.dart';

class HomePage extends StatelessWidget {
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlatButton(
          color: Colors.deepOrangeAccent,
          child: Text("Logout"),
          onPressed: () {
            // LogOut Button
            auth.signOut();

            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => LogInPage()));
          },
        ),
      ),
    );
  }
}
