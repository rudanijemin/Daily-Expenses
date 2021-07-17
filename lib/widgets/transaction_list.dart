import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatefulWidget {
  @override
  _TransactionListState createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
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
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: _userTransactions.map((tx) {
      return Card(
        child: Row(children: <Widget>[
          Container(
            child: Text(
              tx.amount.toString(),
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
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
                DateFormat.yMd().format(tx.date),

              ),

            ],
          ),
        ],
        ),
      );
    }).toList(),
    );

  }
}
