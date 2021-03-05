import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SingInPage extends StatefulWidget {
  @override
  _SingInPageState createState() => _SingInPageState();
}

class _SingInPageState extends State<SingInPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _email, _password;

  checkAuthentication() async {
    FirebaseAuth.instance.authStateChanges().listen((user) async {
      if (user != null) {
        Navigator.pushReplacementNamed(context, "/");
      }
      // else {
      //   Navigator.pushReplacementNamed(context, "/signupPage");
      // }
    });
  }

  navigateTOSignupScreen() {
    Navigator.pushReplacementNamed(context, "/signupPage");
  }

  @override
  void initState() {
    super.initState();
    this.checkAuthentication();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
