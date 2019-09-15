import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';


class Transaction_list extends StatelessWidget {

 final List<Transaction> transaction ;
  
Transaction_list(this.transaction);
  
  @override
  Widget build(BuildContext context) {
    return 
    Container(
        height: 350,
        child: transaction.isEmpty ? 
        Column(
        children: <Widget>[
          Text('No Transactions untill now',
          style: Theme.of(context).textTheme.title,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
           child:  Image.asset(
            'assets/images/waiting.png',
            fit: BoxFit.cover,
           ),
          ),
          ],
        )
        //else
        :ListView.builder(
        itemBuilder: (ctx , index) {
          return  Card(
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 15,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.purple,
                    width: 2,
                  ),
                ),
                padding: EdgeInsets.all(10),
                child: Text(
                  '\$${transaction[index].amount}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.purple,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    transaction[index].tittle,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    DateFormat.yMMMd().format(transaction[index].dateTime),
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      } 
        ,itemCount: transaction.length,
      ));
  }}