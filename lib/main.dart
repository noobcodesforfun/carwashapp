import 'package:carwashapp/pages/setup/signIn.dart';
import 'package:carwashapp/pages/setup/welcome.dart';
import 'package:flutter/material.dart';
void main() => runApp( MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'The Car Wash App',
      theme:  ThemeData(
        primarySwatch: Colors.blue
      ),
      home:  WelcomePage(),
    );
  }
}
