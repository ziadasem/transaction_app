import 'package:flutter/material.dart';

class New_transactions extends StatelessWidget {
  final Function add;
  New_transactions(this.add);
  @override
  Widget build(BuildContext context) {
    

final tittlecontroller = TextEditingController() ;
final amountcontroller = TextEditingController() ;




    return Container(
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
                        print('clkd');
                     add(tittlecontroller.text , double.parse(amountcontroller.text));
                        
                      },
                    
                    ),
                  ],
                ),),),);
  }
}
