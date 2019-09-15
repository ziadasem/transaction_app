import 'package:flutter/material.dart';
import './models/transaction.dart';
import './widget/transactions_list.dart';
import 'widget/new_transactions.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
 
      return MaterialApp(title:'My Transaction App',home:MyHomePage() ,) ;
  }

}


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 List<Transaction> transaction = [
    Transaction(id :'1' , tittle : 'shoes' ,  amount: 19.63 , dateTime: DateTime.now())
  ] ;


    void _addNewTransactions(String txTitle, double txAmount){
        final newTx = Transaction(tittle: txTitle,
        amount: txAmount,
        dateTime: DateTime.now(),
        id:  DateTime.now().toString(),
);

setState(() {
     transaction.add(newTx);
    });
    }

   void _startAddNewTransaction(BuildContext ctx ){
    showModalBottomSheet(context: ctx , builder: (_) {
     
      return GestureDetector(
        child: New_transactions(_addNewTransactions),
        onTap: () {},
         behavior: HitTestBehavior.opaque,
      ) ;
    });
  
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('Transaction'),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.add),
        onPressed: (){
         _startAddNewTransaction(context);
        },
        )
      ],
      ),
      floatingActionButton: FloatingActionButton(
      child: IconButton(icon: Icon(Icons.add),
      onPressed: (){
         _startAddNewTransaction(context);
},),),
      body  :SingleChildScrollView(
        child: Column(
        children: <Widget>[    
        Transaction_list(transaction),
   
               ],
      ),
      ),);
  }
}