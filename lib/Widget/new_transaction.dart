import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {

  final Function addnew_transaction;
  final titlecontroller = TextEditingController();
  final amountcontroller = TextEditingController();

  NewTransaction(this.addnew_transaction);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'), controller: titlecontroller,),
            TextField(decoration: InputDecoration(labelText: 'Amount'),controller: amountcontroller,),
            FlatButton(onPressed: (){
              addnew_transaction(titlecontroller.text,double.parse(amountcontroller.text));
            }, child: Text('Add Transaction'),textColor: Colors.pink,
            )
          ],
        ),
      ),
    );
  }
}
