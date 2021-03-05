import 'package:flutter/material.dart';
import 'homePage.dart';
import 'signInPage.dart';
import 'signupPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Firebase login",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: <String, WidgetBuilder>{
        "/signInPage": (BuildContext context) => SingInPage(),
        "/signupPage": (BuildContext context) => SignUpPage(),
      },
    );
  }
}
