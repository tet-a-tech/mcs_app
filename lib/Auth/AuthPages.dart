import 'package:flutter/material.dart';
import 'package:mcs_app/Services/AuthService.dart';
import 'package:provider/provider.dart';

final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      body: Container(
          child: Center(
        child: Column(
          children: [
            Positioned(
                top: 10,
                left: 25,
                child: Image(
                    image: AssetImage('assets/images/mcs logo white.png'))),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                icon: Icon(Icons.mail_outline),
                border: OutlineInputBorder(),
              ),
            ),
            TextFormField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                icon: Icon(Icons.lock_outline),
                border: OutlineInputBorder(),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  context.read<AuthService>().signIn();
                },
                child: Text('Login'))
          ],
        ),
      )),
    );
  }
}

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
