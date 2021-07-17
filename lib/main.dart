
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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
  final titleController = TextEditingController();
  final amountController = TextEditingController();
 // String titleInput;
  //String amountInput;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('flutter'),
      ),
      body: Column(
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
          Card(

            elevation: 5,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment:CrossAxisAlignment.end ,
                children: [
                  TextField(
                    decoration: InputDecoration(labelText: 'title'),
                  controller: titleController,
                  //  onChanged: (val){
                    //  titleInput =val;
                    //},
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'amount'),
                  controller: amountController,
                  //  onChanged: (val) => amountInput=val,
                  ),
                  FlatButton(
                    child: Text("Add Transaction"),
                    textColor: Colors.purple,

                    onPressed: (){
                      print(titleController.text);
                      print(amountController.text);
                      //print(titleInput);
                    //  print(amountInput);
                    },
                  ),
                ],
              ),
            ),
          ),
          Column(children: transaction.map((tx) {
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
          }).toList(),),

        ],

      ),
    );
  }
}

