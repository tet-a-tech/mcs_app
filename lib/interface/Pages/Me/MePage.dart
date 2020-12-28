import 'package:flutter/material.dart';
import 'package:mcs_app/Services/AuthService.dart';
import 'package:provider/provider.dart';

class MePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Me'),
      ),
      body: Center(
          child: Column(children: [
        Text('Me'),
        ElevatedButton(
            onPressed: () {
              context.read<AuthService>().sighOut();
            },
            child: Text('Logout'))
      ])),
    );
  }
}
