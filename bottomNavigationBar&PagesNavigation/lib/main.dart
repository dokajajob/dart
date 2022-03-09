import 'package:flutter/material.dart';
import 'storepage.dart';

void main(List<String> args) {
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

  var _pages = <Widget>[
    HomePage(), //this is a stateful widget on a separate file
    StorePage(), //this is a stateful widget on a separate file
    SettingsPage(), //this is a stateful widget on a separate file
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // List<Widget> _page = [
  //   Text('Home'),
  //   Text('Store'),
  //   Text('Settings'),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
        ),
        body: Container(
          color: Colors.red[100],
          child: Center(
              child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  PageRouteBuilder(
                      pageBuilder: (_fadetransition, _slidetransition,
                              _scaletransition) =>
                          StorePage(),
                      transitionsBuilder: (_fadetransition, _slidetransition,
                              _scaletransitio, child) =>
                          FadeTransition(
                            opacity: _slidetransition,
                            child: child,
                          ),
                      transitionDuration: Duration(seconds: 1)));
            },
            child: Text('Store Page'),
          )),
        ));
  }
}

// class StorePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("Store Page"),
//         ),
//         body: Container(
//             color: Colors.green[100],
//             child: Center(
//               child: ElevatedButton(
//                 onPressed: () {
//                   Navigator.push(
//                       context,
//                       PageRouteBuilder(
//                           pageBuilder: (_fadetransition, _slidetransition,
//                                   _scaletransition) =>
//                               HomePage(),
//                           transitionsBuilder: (_fadetransition,
//                                   _slidetransition, _scaletransitio, child) =>
//                               FadeTransition(
//                                 opacity: _slidetransition,
//                                 child: child,
//                               ),
//                           transitionDuration: Duration(seconds: 1)));
//                 },
//                 child: Text('Home Page'),
//               ),
//             )));
//   }
// }

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Settings Page"),
        ),
        body: Container(
            color: Colors.blue[100],
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      PageRouteBuilder(
                          pageBuilder: (_fadetransition, _slidetransition,
                                  _scaletransition) =>
                              HomePage(),
                          transitionsBuilder: (_fadetransition,
                                  _slidetransition, _scaletransitio, child) =>
                              FadeTransition(
                                opacity: _slidetransition,
                                child: child,
                              ),
                          transitionDuration: Duration(seconds: 1)));
                },
                child: Text('Home Page'),
              ),
            )));
  }
}
