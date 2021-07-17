import 'package:flutter/material.dart';
import './widgets/transaction_list.dart';




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


        ],

      ) ,
    );
  }
}

