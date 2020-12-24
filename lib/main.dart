import 'package:flutter/material.dart';
import 'package:mcs_app/Nav.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.red,
      ),
      darkTheme: ThemeData(
        primaryColor: Colors.black,
        accentColor: Colors.red,
      ),
      home: Nav(),
    );
  }
}
