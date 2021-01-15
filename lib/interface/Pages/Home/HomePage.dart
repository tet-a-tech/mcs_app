import 'package:flutter/material.dart';
import 'package:fit_kit/fit_kit.dart';
import 'package:mcs_app/Services/FitnessService.dart';
import 'Models/indicators.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  Widget form(
    ImageProvider image,
    String name,
    dynamic result,
  ) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
            //borderRadius: ,
            ),
        child: Column(
          children: [
            Text(name),
            Image(image: image),
            Text(result),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Home')),
        body: Center(
          child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              children: <Widget>[]),
        ));
  }
}
