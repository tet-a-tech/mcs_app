import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mcs_app/interface/Pages/Home/HomePage.dart';
import 'package:mcs_app/interface/Pages/Me/MePage.dart';

class Nav extends StatefulWidget {
  Nav({Key key}) : super(key: key);

  @override
  _NavState createState() => _NavState();
}

int _curentIndex = 0;
List<Widget> _widgetOption = <Widget>[
  HomePage(),
  MePage(),
];

class _NavState extends State<Nav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: _widgetOption.elementAt(_curentIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: GoogleFonts.montserrat(),
        unselectedLabelStyle: GoogleFonts.montserrat(),
        currentIndex: _curentIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box_outlined),
            label: 'Me',
          ),
        ],
        selectedItemColor: Theme.of(context).accentColor,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        onTap: (int index) {
          setState(() {
            _curentIndex = index;
          });
        },
      ),
    );
  }
}
