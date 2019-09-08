import 'package:flutter/material.dart';
import '../models/transaction.dart';
import './transactions_list.dart';
import './new_transactions.dart';
class User_transactions extends StatefulWidget {
  @override
  _User_transactionsState createState() => _User_transactionsState();
}

class _User_transactionsState extends State<User_transactions> {

Transaction _addNewTransaction (String txTittle , double txAmount){
return Transaction(tittle: txTittle,
amount: txAmount,
dateTime: DateTime.now(),
id:  DateTime.now().toString(),
);
}


  List<Transaction> transaction = [
    Transaction(id :'1' , tittle : 'shoes' ,  amount: 19.63 , dateTime: DateTime.now())
  ] ;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        New_transactions(),
        Transaction_list(transaction),
      ],
    );
  }
}