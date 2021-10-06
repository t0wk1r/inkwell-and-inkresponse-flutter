// ignore_for_file: prefer_const_constructors, unnecessary_new, use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Ink Tutorial by towkir.info'),
        ),
        body: Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Place the InkWell or InkResponse here
              Text(_count.toString(), style: TextStyle(fontSize: 50)),
              InkWell(
                splashColor: Colors.yellow,
                highlightColor: Colors.blue,
                child: Icon(Icons.add_circle, size: 50),
                onTap: () {
                  setState(() {
                    _count += 1;
                  });
                },
              ),
              InkWell(
                splashColor: Colors.red,
                highlightColor: Colors.green,
                child: Icon(Icons.restart_alt, size: 50),
                onTap: () {
                  setState(() {
                    _count = 0;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
