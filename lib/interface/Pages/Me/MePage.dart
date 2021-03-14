import 'package:flutter/material.dart';
import 'package:mcs_app/Services/AuthService.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Widget buildListData(String nameData, dynamic indicator) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
    ),
    child: ListTile(),
  );
}

Widget lol() {
  return Container(
    decoration: BoxDecoration(),
    child: ListView.builder(itemBuilder: null),
  );
}

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
        RaisedButton(
          splashColor: Theme.of(context).accentColor,
          highlightColor: Theme.of(context).accentColor,
          color: Theme.of(context).primaryColor,
          child: Text('Logout'),
          onPressed: () {
            context.read<AuthService>().signOut();
          },
        )
      ])),
    );
  }
}
