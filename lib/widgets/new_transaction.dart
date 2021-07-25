import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart ';

class NewTrasaction extends StatefulWidget {
  final Function addTx;

  NewTrasaction(this.addTx);

  @override
  _NewTrasactionState createState() => _NewTrasactionState();
}

class _NewTrasactionState extends State<NewTrasaction> {
  final titleController = TextEditingController();

  final amountController = TextEditingController();

  void submitData(){
    final enteredTitle = titleController.text;
    final enterAmount = double.parse(amountController.text);

    if(enteredTitle.isEmpty || enterAmount <=0){
      return;
    }

    widget.addTx(
      enteredTitle,
      enterAmount,
    );
    Navigator.of(context).pop();

  }

  @override
  Widget build(BuildContext context) {
    return Card(


      child: Container(
        padding: EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.end ,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'title'),
              controller: titleController,
              keyboardType: TextInputType.text,
              onSubmitted:(_) => submitData(),
              //  onChanged: (val){
              //  titleInput =val;
              //},
            ),

            TextField(
              decoration: InputDecoration(labelText: 'amount'),
              controller: amountController,
              keyboardType: TextInputType.number,
              onSubmitted:(_) => submitData(),
              //  onChanged: (val) => amountInput=val,
            ),
            Container(
              height: 70,
              child: Row(children: [
                Text("No data chosen"),
                FlatButton(
                  textColor: Theme.of(context).primaryColor,
                  child: Text("Chose data",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: (){},
                ),
              ],),
            ),
            RaisedButton(
              child: Text(
                  "Add Transaction",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),

              color: Theme.of(context).primaryColor,
              textColor: Theme.of(context).textTheme.button.color,

              onPressed: submitData,
            ),

          ],
        ),
      ),
    );


  }
}
