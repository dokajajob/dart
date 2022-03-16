import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  late final TextEditingController _controller;
  var str = '';

  @override
  void initState() {
    super.initState();
    //_controller = TextEditingController(text: 'Init');
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: TextField(
            onChanged: (value) => str = value,
            controller: _controller,
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            autofocus: true,
            style: TextStyle(color: Colors.red[100]),
            decoration: InputDecoration(
                hintText: 'password', prefixIcon: Icon(Icons.sailing)),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        label:
        Text('GO!');
        icon:
        Icon(Icons.sailing);
        Navigator.of(context).push(MaterialPageRoute(
            //builder: (context) => SecondPage(_controller.text)));
            builder: (context) => SecondPage(str)));
      }),
    );
  }
}

class SecondPage extends StatelessWidget {
  final String userInput;
  SecondPage(this.userInput);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(userInput),
      ),
      body: Center(
        child: Text(userInput),
      ),
    );
  }
}
