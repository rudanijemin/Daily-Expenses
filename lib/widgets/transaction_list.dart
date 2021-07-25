import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  



  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 300,

        child: transactions.isEmpty ? Column(children: [
           Text(
             "No Transaction yel!",
             style: Theme.of(context).textTheme.title,
           ),
          SizedBox(
            height:10,
          ),
          Container(
            height: 200,
            child: Image.asset(
              'assets/images/waiting.png',
              fit: BoxFit.cover,
            ),
          ),
        ],) : ListView.builder(
          itemBuilder: (ctx, index) {
            var trailing;
            return Card(
              child: Row(children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 17,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).primaryColor,
                      width: 2,
                    ),
                  ),
                  child: Text(
                    transactions[index].amount.toString(),
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      transactions[index].title,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),

                    ),
                    Text(
                      DateFormat.yMd().format(transactions[index].date),

                    ),
                    trailing: IconButton(
                      icon: icon(Icons.delete),
                      color:Theme.of(context).errrorColors,
                    ),


                  ],
                  
                ),
              ],
                
              ),
              
            );


          },
          itemCount: transactions.length,
         
        ),

    );

  }
}
