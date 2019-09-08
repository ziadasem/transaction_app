import 'package:flutter/material.dart';
import './new_transactions.dart';
class User_transactions extends StatefulWidget {
  @override
  _User_transactionsState createState() => _User_transactionsState();
}

class _User_transactionsState extends State<User_transactions> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        New_transactions(),
        New_transactions(),
      ],
    );
  }
}