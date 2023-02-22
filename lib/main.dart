import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My players'),
        ),
        body: Column(
          children: [
            Container(
              padding:EdgeInsets.all(5),
              margin: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
              color:Colors.blue
              child: Text('Chelsea players'),
          )],
        ));
  }
}
