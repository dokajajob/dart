import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  late String titleFirstPage = 'firstPageTitle';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/first',
      // onGenerateRoute: (settings) {
      //   if (settings.name == '/second') {
      //     final args = settings.arguments;
      //     return PageRouteBuilder(
      //         settings: settings,
      //         pageBuilder: (
      //           _,
      //           __,
      //           ___,
      //         ) =>
      //             SecondPage(args),
      //         transitionsBuilder: (_, a, __, c) =>
      //             FadeTransition(opacity: a, child: c));
      //   } else if (settings.name == '/first') {
      //     final args = settings.arguments;
      //     return PageRouteBuilder(
      //         settings: settings,
      //         pageBuilder: (
      //           _,
      //           __,
      //           ___,
      //         ) =>
      //             FirstPage(args),
      //         transitionsBuilder: (_, a, __, c) =>
      //             FadeTransition(opacity: a, child: c));

      // } else if (settings.name == '/third') {
      //   final args = settings.arguments;
      //   return PageRouteBuilder(
      //       settings: settings,
      //       pageBuilder: (
      //         _,
      //         __,
      //         ___,
      //       ) =>
      //           FirstPage(args),
      //       transitionsBuilder: (_, a, __, c) =>
      //           FadeTransition(opacity: a, child: c));

      // }
      // },

      routes: {
        '/first': (context) => FirstPage('firstPageTitle'),
        '/second': (context) => SecondPage('secondPageTitle'),
        '/third': (context) => ThirdPage('thirdPageTitle'),
        '/fourth': (context) => FourthPage('fourthdPageTitle'),
      },
      home: FirstPage(titleFirstPage),
    );
  }
}

class FirstPage extends StatelessWidget {
  final title;
  FirstPage(this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
          color: Colors.green[100],
          child: Center(
              child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/second',
                  arguments: 'pushedFromFirstPage');
            },
            child: Text('Go To Second Page'),
          ))),
    );
  }
}

class SecondPage extends StatelessWidget {
  final title;
  SecondPage(this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Container(
          color: Colors.amber,
          child: Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/third');
                  //arguments: 'pushedFromSecondPage');

                  transitionDuration:
                  Duration(milliseconds: 500);
                },
                child: Text("Go To Third Page")),
          ),
        ));
  }
}

class ThirdPage extends StatelessWidget {
  final title;
  ThirdPage(this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Container(
          color: Colors.red[100],
          child: Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      '/fourth', ModalRoute.withName('/first'));
                  //arguments: 'pushedFromSecondPage');

                  transitionDuration:
                  Duration(milliseconds: 500);
                },
                child: Text("Go Fourth Page")),
          ),
        ));
  }
}

class FourthPage extends StatelessWidget {
  final title;
  FourthPage(this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Container(
          color: Color.fromARGB(255, 43, 30, 30),
          child: Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  //arguments: 'pushedFromSecondPage');

                  transitionDuration:
                  Duration(milliseconds: 500);
                },
                child: Text(
                    "Go Back To Second Page And Clear Route Stuck Until Second Page")),
          ),
        ));
  }
}
