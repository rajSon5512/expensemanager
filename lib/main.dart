
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body:Column(
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
            child: Text('Second Card'),
            color: Colors.blue,
          )
        ],
      )
    );
  }
}
