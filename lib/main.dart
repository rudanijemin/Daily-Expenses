import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter project",
      home: myhomepage(),
    );
  }
}

class myhomepage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('flutter'),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.teal,
            width: double.infinity,
            child: Card(
              child: Text('CHART!'),
              color: Colors.teal,
              elevation: 10,
            ),
          ),
          Card(
            child: Text('List of Tx'),
          ),
        ],

      ),
    );
  }
}

