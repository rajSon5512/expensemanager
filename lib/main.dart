import 'package:expensemanager/transactions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'flutter App',
      home: MyAppState(),
    );
  }
}

class MyAppState extends StatelessWidget {

  final titlecontroller = TextEditingController();
  final amountcontroller = TextEditingController();

  final List<Transactions> transactions=[
    Transactions('1', 'Nike Shoes', 123, DateTime.now()),
    Transactions('2', 'Rocky Shoes',212, DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body:Column(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: double.infinity,
            child: Card(
              child: Text('First Card',style: TextStyle(fontSize: 32),),
              color: Colors.blue,
              elevation: 5,
            ),
          ),
          Card(
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
                    print(titlecontroller.text);
                  }, child: Text('Add Transaction'),textColor: Colors.pink,)
                ],
              ),
            ),
          ),
          Column(
            children:
              transactions.map((t){
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
          )
        ],
      )
    );
  }
}
