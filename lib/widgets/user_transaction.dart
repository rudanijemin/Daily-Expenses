import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'new_transaction.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}
class _UserTransactionState extends State<UserTransaction> {

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



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTrasaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
