import 'package:expensemanager/Model/transactions.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'new_transaction.dart';
import 'transaction_list.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {

  final List<Transactions> transactionlist=[
    Transactions('1', 'Nike Shoes', 123, DateTime.now()),
    Transactions('2', 'Rocky Shoes',212, DateTime.now()),
  ];

  void _addnew_transaction(String title,double amount){

    final Transactions tx=Transactions(DateTime.now().toString(), title, amount, DateTime.now());

    setState(() {
      transactionlist.add(tx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addnew_transaction),
        TransactionList(transactionlist),
      ],
    );
  }
}
