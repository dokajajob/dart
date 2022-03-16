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
  var selected = 1;
  final dropDownList = <int>[1, 2, 3, 4, 5];
  bool isChecked = false;
  var sex = 'male';
  var isOn = false;
  final _globKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('DropDown App'),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(10.0),
            margin: const EdgeInsets.all(20.0),
            width: 200,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Form(
                key: _globKey,
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please provide input';
                    }
                    return null;
                  },
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  _globKey.currentState!.validate();
                },
                child: Text("Validate!"),
              ),
              Switch(
                value: isOn,
                onChanged: (bool? val) {
                  setState(() {
                    if (val != null) isOn = val;
                  });
                },
              ),
              RadioListTile(
                  title: Text('female'),
                  contentPadding: EdgeInsets.all(30.0),
                  value: 'female',
                  groupValue: sex,
                  onChanged: (String? val) {
                    setState(() {
                      if (val != null) sex = val;
                    });
                  }),
              //SizedBox(height: 300),
              RadioListTile(
                  title: Text('male'),
                  contentPadding: EdgeInsets.all(30.0),
                  value: 'male',
                  groupValue: sex,
                  onChanged: (val) {
                    setState(() {
                      if (val != null) sex = val.toString();
                    });
                  }),
              Checkbox(
                  value: isChecked,
                  onChanged: (val) {
                    setState(() {
                      if (val != null) isChecked = val;
                    });
                  }),
              DropdownButton(
                  value: selected,
                  icon: const Icon(Icons.arrow_downward_sharp),
                  items: dropDownList
                      .map((e) =>
                          DropdownMenuItem(value: e, child: Text(e.toString())))
                      .toList(),
                  onChanged: (int? val) {
                    setState(() {
                      if (val != null) selected = val;
                    });
                  }),
            ]),
          ),
        ));
  }
}
