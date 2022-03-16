import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  bool isEmailSent = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: Container(
          color: Colors.blue[100],
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              // DrawerHeader(
              //     decoration: BoxDecoration(
              //       color: Colors.pink,
              //     ),
              //     child: Container(
              //         color: Colors.green[100],
              //         child: DrawerHeader(child: Text('DrawerHeader')))),
              Container(
                //width: double.infinity,
                child: const UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    foregroundImage: AssetImage(
                      'tob.jpg',
                    ),
                  ),
                  //   child: Image.network(
                  //       'https://assets-global.website-files.com/5ce44e4e8d1c1fc85b84c18d/61576996d44632cb209bc161_03kjkqu06u7guj4a7ke7f4843w4gaeua.jpeg'),
                  // ),
                  accountEmail: Text('dokaja@gmail.com'),
                  accountName: Text('Eddie'),
                ),
              ),
              ListTile(
                title: const Text('Item 1'),
                onTap: () {
                  print('item 1 pressed');
                },
              ),
              ListTile(
                title: const Text('Item 2'),
                textColor: Colors.red[200],
                onTap: () {
                  print('item 2 pressed');
                },
              )
            ],
          ),
        ),
      ),
      body: const Center(
        child: Text('Drawer'),
      ),
    );
  }
}
