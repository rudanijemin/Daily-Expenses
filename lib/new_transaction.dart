import 'package:flutter/material.dart ';

class NewTrasaction extends StatelessWidget {

  final titleController = TextEditingController();
  final amountController = TextEditingController();


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
    );

  }
}
