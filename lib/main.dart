import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mcs_app/Auth/AuthPages.dart';
import 'package:mcs_app/Services/AuthService.dart';
import 'package:mcs_app/interface/Nav.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthService>(
          create: (_) => AuthService(FirebaseAuth.instance),
        ),
        StreamProvider(
          create: (context) => context.read<AuthService>().authStateChanges,
        )
      ],
      child: MaterialApp(
        title: "MCS",
        theme: ThemeData(
          primaryColor: Colors.white,
          accentColor: Colors.red,
          primaryTextTheme: GoogleFonts.montserratTextTheme(),
          

        ),
        darkTheme: ThemeData(
          primaryColor: Colors.black12,
          accentColor: Colors.red,
          primaryTextTheme: GoogleFonts.montserratTextTheme(),
        ),
        home: AuthWrapper(),
      ),
    );
  }
}

class AuthWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User>();
    if (firebaseUser != null) {
      return Nav();
    } else {
      return LoginPage();
    }
  }
}
