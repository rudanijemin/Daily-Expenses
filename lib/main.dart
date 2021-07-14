import 'package:flutter/material.dart';
import './transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "flutter project",
      home: myhomepage(),
    );
  }
}

class myhomepage extends StatelessWidget {
  final List<Transaction> transaction =[
    Transaction(
      id: 't1',
      title: 'new shoes',
      amount: 600,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't1',
      title: 'new shoes',
      amount: 600,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('flutter'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
            color: Colors.blueGrey,
          ),
        ],

      ),
    );
  }
}

