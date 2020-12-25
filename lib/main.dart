import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
        primaryTextTheme: GoogleFonts.montserratTextTheme(),
      ),
      darkTheme: ThemeData(
        primaryColor: Colors.black,
        accentColor: Colors.red,
        primaryTextTheme: GoogleFonts.montserratTextTheme(),
      ),
      home: Nav(),
    );
  }
}
