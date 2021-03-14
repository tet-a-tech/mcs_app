import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:mcs_app/Services/AuthService.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailContoller = TextEditingController();
  final TextEditingController _passwordContoller = TextEditingController();

  String email;
  String password;
  bool showLogin = true;

  void _login() {
    email = _emailContoller.text;
    password = _passwordContoller.text;
    context.read<AuthService>().signIn(email: email, password: password);

    _emailContoller.clear();
    _passwordContoller.clear();
  }

  void _register() {
    email = _emailContoller.text;
    password = _passwordContoller.text;
    context.read<AuthService>().signUp(email: email, password: password);

    _emailContoller.clear();
    _passwordContoller.clear();
  }

  Widget _logo() {
    return Padding(
      padding: EdgeInsets.only(top: 100),
      child: Container(
        child: Align(
          child: Image(
            image: AssetImage('assets/images/mcslogored.png'),
            height: 70,
            width: 90,
          ),
        ),
      ),
    );
  }

  Widget input(
      Icon icon, String hint, TextEditingController controller, bool obscure) {
    return Container(
        padding: EdgeInsets.only(top: 20, left: 20, right: 20),
        child: TextField(
            controller: controller,
            obscureText: obscure,
            style: TextStyle(
              fontSize: 20,
              color: Theme.of(context).accentColor,
            ),
            decoration: InputDecoration(
                hintStyle: TextStyle(fontSize: 20, color: Colors.red[500]),
                hintText: hint,
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Theme.of(context).accentColor, width: 1)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 1)),
                prefixIcon: Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: IconTheme(
                    data: IconThemeData(color: Theme.of(context).accentColor),
                    child: icon,
                  ),
                ))));
  }

  Widget button(String text, void func()) {
    return RaisedButton(
      splashColor: Theme.of(context).accentColor,
      highlightColor: Theme.of(context).accentColor,
      color: Theme.of(context).primaryColor,
      child: Text(text,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).accentColor)),
      onPressed: () {
        func();
      },
    );
  }

  Widget _form(
    String label,
    void func(),
  ) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 20, top: 10),
            child: input(
                Icon(Icons.email_outlined), "Email", _emailContoller, false),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 20, top: 10),
            child: input(Icon(Icons.lock_outlined), "Password",
                _passwordContoller, true),
          ),
          SizedBox(height: 20),
          Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: button(label, func),
              )),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: <Widget>[
          _logo(),
          (showLogin
              ? Column(
                  children: <Widget>[
                    _form(
                      'Login',
                      _login,
                    ),
                  ],
                )
              : 1337),
        ],
      ),
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
