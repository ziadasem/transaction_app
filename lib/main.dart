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


final tittlecontroller = TextEditingController() ;
final amountcontroller = TextEditingController() ;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('Transaction'),),
      body  :Column(
      children: <Widget>[
      Container(
      width: double.infinity,
        child: Card(
              
              elevation: 5,
              child: Container(
              
                padding: EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    TextField(
                      controller: tittlecontroller,
                      style: TextStyle(
                        backgroundColor: Colors.white,
                        fontSize: 18
                      ),
                      decoration: InputDecoration(
                        labelText: 'title'
                      ),
                    ),
                     TextField(
                       controller: amountcontroller,
                      style: TextStyle(
                        backgroundColor: Colors.white,
                        fontSize: 18
                      ),
                      decoration: InputDecoration(
                        labelText: 'amount'
                      ), 
                    ),
                    FlatButton(
                      child: Text('add transaction',
                      style: TextStyle(color: Colors.purple,)
                      ),
                      onPressed: () {
                      print(tittlecontroller.text);
                       print(amountcontroller.text);
                        
                      },
                    
                    ),
                  ],
                ),
              ),),),],),);
  }
}