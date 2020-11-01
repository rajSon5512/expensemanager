import 'package:expensemanager/transactions.dart';
import 'package:flutter/material.dart';

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
        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
          Column(
            children:
              transactions.map((t){
                return Card(
                child:Text(t.title),);
             }).toList()
          )
        ],
      )
    );
  }
}
