import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart ';

class NewTrasaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTrasaction(this.addTx);


  @override
  Widget build(BuildContext context) {
    return Card(

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
              child: Text(
                  "Add Transaction",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),

              textColor: Colors.purple,

              onPressed: (){
                addTx(
                    titleController.text,
                    double.parse(amountController.text),
                );
                 //print(titleInput);
                //  print(amountInput);
              },
            ),

          ],
        ),
      ),
    );


  }
}
