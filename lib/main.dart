import 'package:flutter/material.dart';
import './players.dart';

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
  final List<Player> players = [
    Player(name: 'Joe', age: 24, price: 50000, location: 'Kenya'),
    Player(name: 'Fidel', age: 21, price: 90000, location: 'Ghana'),
    Player(name: 'Emmanuel', age: 27, price: 30000, location: 'Uganda'),
    Player(name: 'Rick', age: 34, price: 45000, location: 'South Africa')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My players'),
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              color: Colors.blue,
              child: Text('Chelsea players'),
            ),
            Column(children:players.map((player) {
              return Card(
                child: Row(
                  children: [
                    Column(children: [
                      Text(player.name,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                      Text(player.age.toString(),style: TextStyle(fontSize: 13),),
                      Text(player.location,style: TextStyle(fontSize: 10),)
                    ],)
                  ],
                ),
              );
            }).toList())
          ],
        ));
  }
}
