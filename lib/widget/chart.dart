import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class Chart extends StatelessWidget {
 
  final List<Transaction> recentTransactions ;

  Chart(this.recentTransactions);
  
  List <Map<String , Object>> get groupedTransactions{
    return List.generate(7, (index) {

        final weekDay = DateTime.now().subtract(
        Duration(days: index),
      );
      var totalSum = 0.0;

       for (var i = 0; i < recentTransactions.length; i++) {
           if (recentTransactions[i].dateTime.day == weekDay.day &&
          recentTransactions[i].dateTime.month == weekDay.month &&
          recentTransactions[i].dateTime.year == weekDay.year) {

          totalSum += recentTransactions[i].amount;
        }
        
        }


      return {
        "DayLabel" : DateFormat.E().format(weekDay).substring(0, 1),
        "Amount"   : totalSum ,
      } ;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(20),
      elevation: 6,
      child: Row(
        children: <Widget>[],
      ),
    );
  }
}