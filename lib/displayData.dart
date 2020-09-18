import 'package:akhdar/discover/discover.dart';
import 'package:flutter/material.dart';

class DisplayData extends StatefulWidget {
  DisplayData({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return DisplayDataState();
  }
}

class DisplayDataState extends State<DisplayData> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Text("5"),
    Text("4"),
    Discover(),
    Text("2"),
    Text("1"),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: getBottomNavigationBar());
  }

  Widget getBottomNavigationBar() {
    return BottomNavigationBar(
      elevation: 0,
      unselectedItemColor: Colors.grey,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: SizedBox.shrink(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.library_books_rounded),
          title: SizedBox.shrink(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.compass_calibration),
          title: SizedBox.shrink(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          title: SizedBox.shrink(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: SizedBox.shrink(),
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.green,
      onTap: _onItemTapped,
    );
  }
}
