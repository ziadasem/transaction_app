import 'package:flutter/material.dart';
import './transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return MaterialApp(title:'My Transaction App',home:MyHomePage() ,) ;
  }

}


class MyHomePage extends StatelessWidget {
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
     Column(
     children: transaction.map( (tx)
      {
        return Card(
          child: Row(children: <Widget>[
            Container(child: Text('\$${tx.amount}'   //B-first part
            ,style: TextStyle(
            fontSize: 20,
            color: Colors.purple ,  
            ),),
            decoration : BoxDecoration( 
            border: Border.all(
            color: Colors.purple,
            width: 2,
            ),
            
            ) ,
            margin: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 15,
            ),
            padding: EdgeInsets.all(5),
            ),//first part
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(tx.tittle,       //TITTLE TEXT
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  
                ) ,
                
                ),
                Text(tx.dateTime.toString(),
                 textAlign: TextAlign.right,
                 style: TextStyle(
                   color: Colors.grey,
                  fontSize: 18,

                  ),
                ),

              ],
            ),

          ],),
        );
      }

     ).toList(),)
      ],
      )
    );
  }
}