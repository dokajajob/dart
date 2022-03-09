import 'package:flutter/material.dart';
import 'main.dart';

// void main(List<String> args) {
//   runApp(myApp());
// }

class StorePage extends StatelessWidget {
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
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;

  var _pages = <Widget>[
    HomePage(), //this is a stateful widget on a separate file
    //StorePage(), //this is a stateful widget on a separate file
    SettingsPage(), //this is a stateful widget on a separate file
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Store Page"),
        ),
        body: Center(child: _pages.elementAt(_selectedIndex)),
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
        ));
  }
}

// class StorePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Store Page"),
//       ),
//       body: Center(child: _pages.elementAt(_selectedIndex)),
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         items: <BottomNavigationBarItem>[
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//           BottomNavigationBarItem(icon: Icon(Icons.store), label: 'Store'),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.settings), label: 'Settings'),
//         ],
//         //selectedItemColor: Colors.green[300],
//         currentIndex: _selectedIndex,
//         onTap: _onItemTapped,
//       ),
//       // color: Colors.green[100],
//       // child: Center(
//       //   child: ElevatedButton(
//       //     onPressed: () {
//       //       Navigator.push(
//       //           context,
//       //           PageRouteBuilder(
//       //               pageBuilder: (_fadetransition, _slidetransition,
//       //                       _scaletransition) =>
//       //                   HomePage(),
//       //               transitionsBuilder: (_fadetransition,
//       //                       _slidetransition, _scaletransitio, child) =>
//       //                   FadeTransition(
//       //                     opacity: _slidetransition,
//       //                     child: child,
//       //                   ),
//       //               transitionDuration: Duration(seconds: 1)));
//       //     },
//       //     child: Text('Home Page'),
//       //   ),
//       // )
//     );
//   }
// }
