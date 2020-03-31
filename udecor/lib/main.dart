import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp',
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: CircleAvatar(
              backgroundImage: AssetImage('images/greg.jpg'),
            ),
          ),
          backgroundColor: Colors.blueGrey,
        ),
        body: Container(
          child: Center(
            child: Text(
              'Hello world',
              textDirection: TextDirection.ltr,
            ),
          ),
        ),
      ),
    );
  }
}
