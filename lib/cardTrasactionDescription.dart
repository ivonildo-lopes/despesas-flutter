import 'package:despesas/model/transaction.dart';
import 'package:flutter/material.dart';

class CardTransactionDescription extends StatelessWidget {
  final Transaction transaction;

  CardTransactionDescription(this.transaction);

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.end, 
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(transaction.title, 
        style: TextStyle(
          fontSize: 16,
          color: Colors.purple,
          fontWeight: FontWeight.bold,
        )),
        Text(transaction.date.toString(),
         style: TextStyle(
          fontSize: 10,
          color: Colors.blueGrey[300],
          fontWeight: FontWeight.normal,
        )),
      ],
    );
  }
}
