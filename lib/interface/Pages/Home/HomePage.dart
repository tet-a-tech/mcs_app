import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:core';
import 'Models/indicators.dart';
import 'package:fit_kit/fit_kit.dart';

Indicator pulse = new Indicator(
  icon: "assets/images/pulse.svg",
  name: "Pulse",
  value: "60 BPM",
);

Indicator sleep = new Indicator(
  icon: "assets/images/sleep.svg",
  name: "Steps",
  value: "6h 27m",
);

Indicator steps = new Indicator(
  icon: "assets/images/steps.svg",
  name: "Pulse",
  value: "5000",
);

Indicator weight = new Indicator(
  icon: "assets/images/weight.svg",
  name: "weight",
  value: "60 kg",
);

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Indicator> indicatorList = [pulse, sleep, steps, weight];
    return Scaffold(
        appBar: AppBar(title: Text("Home")),
        body: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 16, right: 16),
          crossAxisCount: 2,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          children: indicatorList.map((e) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SvgPicture.asset(e.icon),
                  SizedBox(height: 14),
                  Text(e.value,
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).accentColor,
                      ))),
                ],
              ),
            );
          }).toList(),
        ));
  }
}
