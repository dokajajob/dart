import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  //State<MyHomePage> createState() => _MyHomePageState();
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var titleAlert;

  _bottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) => Container(
              height: 100,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text('Bottom Sheet', textAlign: TextAlign.center),
                    ElevatedButton(
                      child: Text('DialogOpen'),
                      onPressed: _showDialog,
                    ),
                  ]),
            ));
  }

  _showDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          '$titleAlert',
          textAlign: TextAlign.center,
        ),
        content: Text('Description Of Alert', textAlign: TextAlign.center),
        backgroundColor: Color.fromARGB(255, 230, 144, 47),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        actions: [
          // Row(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: <Widget>[
          Expanded(
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SimpleDialogOption(
                  //padding: new EdgeInsets.all(10.0),
                  onPressed: () {
                    print('Option 1');
                  },
                  child: Text('Option 1'),
                ),
                SimpleDialogOption(
                    padding: new EdgeInsets.all(20.0),
                    onPressed: () {
                      print('Option 2');
                    },
                    child: Text('Option 2')),
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: TextButton.styleFrom(
                      primary: Color.fromARGB(255, 126, 35, 28)),
                  child: Text(
                    'Cancel',
                    style: TextStyle(fontSize: 15),
                  )),
              TextButton(
                onPressed: () {
                  titleAlert = 'Configured';
                },
                style: TextButton.styleFrom(
                    primary: Color.fromARGB(255, 126, 35, 28)),
                child: Text(
                  'Configure',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('DropDown App')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ElevatedButton(
              child: Text('DialogOpen'),
              onPressed: _showDialog,
            ),
            ElevatedButton(
              child: Text('BottomSheet'),
              onPressed: _bottomSheet,
            ),
          ],
        ),
      ),
    );
  }
}
