import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);


  @override
  Widget build(BuildContext context) {
    return  Column(
      children: transactions.map((tx) {
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
