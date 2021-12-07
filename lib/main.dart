import 'package:expenses_app/transactions.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transactions> transactions = [
    Transactions(id: 'T1', title: 'New Shoes', amount: 69.99, date: DateTime.now(),),
    Transactions(id: 'T2', title: 'Grocery Store', amount: 19.99, date: DateTime.now(),),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expenses App"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
          Container(
            width: double.infinity,
            child: Card(
              child: Text("CHART!"),
            ),
          ),
          Card(
            child: Text("LIST OF TX"),
          )
        ],
      ),
    );
  }
}