import 'package:flutter/material.dart';
import './models/transaction.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  
  @override
  Widget build(BuildContext context) {
 
      return MaterialApp(title:'My Transaction App',home:MyHomePage() ,) ;
  }

}


class MyHomePage extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('Transaction'),),
      body  :Column(
      children: <Widget>[
      
             ],),);
  }
}