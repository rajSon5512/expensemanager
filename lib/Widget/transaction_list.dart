import 'package:expensemanager/Model/transactions.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {

  final List<Transactions> transactionlist;

  TransactionList(this.transactionlist);


  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
          children:
          transactionlist.map((t){
            return Card(
              child:Row(
                children: [
                  Container(
                    margin:EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 15
                    ),
                    child: Text('\$${t.amount}',style: TextStyle(fontSize: 18,color: Colors.deepOrange),),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.deepOrange,
                          width: 2,
                        )),
                    padding: EdgeInsets.all(10),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(t.title,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 18),),
                      Text(DateFormat('yyyy/mm/dd').format(t.dateTime),style: TextStyle(color: Colors.grey),),
                    ],
                  )
                ],
              ),);
          }).toList()
      ),
    );
  }
}
