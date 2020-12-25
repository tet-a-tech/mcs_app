import 'package:flutter/material.dart';

class Nav extends StatefulWidget {
  Nav({Key key}) : super(key: key);

  @override
  _NavState createState() => _NavState();
}

int _curentIndex = 0;
List<Widget> _widgetOption = <Widget>[
  Text('Home'),
  Text('Me'),
];

class _NavState extends State<Nav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOption.elementAt(_curentIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: (int index) {
          setState(() {
            _curentIndex = index;
          });
        },
      ),
    );
  }
}
