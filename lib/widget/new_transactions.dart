import 'package:flutter/material.dart';

class New_transactions extends StatefulWidget {
  final Function add;
  New_transactions(this.add);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}


  class _NewTransactionState extends State<New_transactions> {
  final titleController = TextEditingController() ;
final amountController = TextEditingController() ;
  
void submitData() {
  final enteredTitle = titleController.text;
  final enteredAmount = double.parse(amountController.text);

  if (enteredTitle.isEmpty || enteredAmount <= 0) {
      return;
    }

    widget.add(
      enteredTitle,
      enteredAmount,
    );

Navigator.of(context).pop();
}


  @override
  Widget build(BuildContext context) {
    
    
    
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
                      controller: titleController,
                      style: TextStyle(
                        backgroundColor: Colors.white,
                        fontSize: 18
                      ),
                      decoration: InputDecoration(
                        labelText: 'title'
                      ),
                    ),
                     TextField(
                       controller: amountController,
                      style: TextStyle(
                        backgroundColor: Colors.white,
                        fontSize: 18
                      ),
                         decoration: InputDecoration(
                        labelText: 'amount'
                      ), 
                          onSubmitted: (_) => submitData(),
                    ),
                    FlatButton(
                      child: Text('add transaction',
                      style: TextStyle(
                      color:Theme.of(context).primaryColor,)
                      ),
                      onPressed: () {
                        print('clkd');
                      submitData();
                      },
                    
                    ),
                  ],
                ),),),);
  }
}
