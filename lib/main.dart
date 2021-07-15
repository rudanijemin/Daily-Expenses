
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
      id: 't2',
      title: 'weekly groceries',
      amount: 1000,
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
          Column(children: transaction.map((tx) {
            return Card(
              child: Row(children: <Widget>[
                Container(
                  child: Text(
                    tx.amount.toString(),
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text(
                    tx.title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),

                  ),
                  Text(
                      tx.date.toString(),

                  ),

                ],
                ),
              ],
            ),
            );
          }).toList(),),

        ],

      ),
    );
  }
}

