import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(myApp());
}

class myApp extends StatefulWidget {
  @override
  _myAppState createState() {
    return _myAppState();
  }
}

class _myAppState extends State<myApp> {
  int count = 0;
  @override
  void initState() {
    super.initState();
    _getThingsOnStartup().then((value) => print('Async finished'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('$count')),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  count++;
                });
              },
              child: Text('Increase'))
        ],
      )),
    ));

  }
}

Future _getThingsOnStartup() async {
  await Future.delayed(Duration(seconds: 2));
}
