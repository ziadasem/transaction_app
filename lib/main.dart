import 'package:flutter/material.dart';
import './transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<Transaction> transaction = [
    Transaction( id : '1',
     tittle : 'shoes',
     amount : 68.99 ,
     dateTime : DateTime.now()),
    Transaction( id : '2',
     tittle : 'grocery',
     amount : 16 ,
     dateTime : DateTime.now()),
  ] ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Transaction'),),
      body  :Column(
      children: <Widget>[
      Container(
      width: double.infinity,
        child: Card(
              color: Colors.blue,
              child: Text('CHART!'),
              elevation: 5,
            ),     
     
      ),//first part
      Column(children: transaction.map( (tx) {
        return Card(  
            child: Text(tx.tittle),
        );
      }).toList()),
      ],
      )
     
    );
  }
}


