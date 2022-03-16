import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: CustomBottomNavigationBar());
  }
}

class CustomBottomNavigationBar extends StatefulWidget {
  @override
  _CustomBottomNavigationBarState createState() {
    return _CustomBottomNavigationBarState();
  }

  // _CustomBottomNavigationBarState createState() =>
  //     _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> _page = [
    Text('Home'),
    Text('Store'),
    Text('Settings'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _page[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.store), label: 'Store'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
        //selectedItemColor: Colors.green[300],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
