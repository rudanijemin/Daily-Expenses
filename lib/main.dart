
import 'package:flutter/gestures.dart';

import './widgets/new_transaction.dart';
import './models/transaction.dart';

import './widgets/transaction_list.dart';
import 'package:flutter/material.dart';





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

class myhomepage extends StatefulWidget {




  @override
  _myhomepageState createState() => _myhomepageState();
}

class _myhomepageState extends State<myhomepage> {
  final List<Transaction> _userTransactions =[
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

  void _addNewTransaction(String txTitle,double txAmount){
    final newTx =Transaction(
      title: txTitle,
      amount: txAmount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  void _startAddNewTrasaction(BuildContext ctx){
    showModalBottomSheet(context: ctx ,builder: (_){
      return GestureDetector(
        onTap: (){},
        child: NewTrasaction(_addNewTransaction),
        behavior: HitTestBehavior.opaque,
      );
    },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('flutter'),
        actions: [
          IconButton(icon: Icon(Icons.add),
            onPressed: () =>_startAddNewTrasaction(context),
          )
        ],
      ),
      body: SingleChildScrollView (
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
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
            TransactionList(_userTransactions),
          ],

        ),
      ) ,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed:() =>_startAddNewTrasaction(context),
      ),
    );
  }
}

