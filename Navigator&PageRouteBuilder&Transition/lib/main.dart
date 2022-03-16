import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: FirstPage());
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
      ),
      body: Container(
          color: Colors.green[100],
          child: Center(
              child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('/second');
              PageRouteBuilder(
                  pageBuilder:
                      (_fadetransition, _slidetransition, _scaletransition) =>
                          SecondPage(),
                  transitionsBuilder: (_fadetransition, _slidetransition,
                          _scaletransitio, child) =>
                      FadeTransition(
                        opacity: _slidetransition,
                        child: child,
                      ),
                  transitionDuration: Duration(seconds: 1));
            },
            child: Text('Second Page'),
          ))),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Second Page"),
        ),
        body: Container(
          color: Colors.amber,
          child: Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  transitionDuration:
                  Duration(milliseconds: 500);
                },
                child: Text("First Page")),
          ),
        ));
  }
}
