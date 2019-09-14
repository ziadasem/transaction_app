import 'package:flutter/material.dart';
import './models/transaction.dart';
import './widget/user_transactions.dart';
import 'widget/new_transactions.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  

  
  @override
  Widget build(BuildContext context) {
 
      return MaterialApp(title:'My Transaction App',home:MyHomePage() ,) ;
  }

}


class MyHomePage extends StatelessWidget {
  final  List <Transaction> transaction = [] ;



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('Transaction'),),
      body  :SingleChildScrollView(
        child: Column(
        children: <Widget>[
          User_transactions(),
    
               ],),
      ),);
  }
}