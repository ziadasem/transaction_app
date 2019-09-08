import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';


class Transaction {
final String id ;
final String tittle ;
final double amount ;
final DateTime dateTime ;

Transaction({
@required this.id ,
this.tittle,
this.amount,
this.dateTime
});



}