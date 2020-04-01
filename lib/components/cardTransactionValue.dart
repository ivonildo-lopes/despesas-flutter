import 'package:despesas/model/transaction.dart';
import 'package:flutter/material.dart';

class CardTransactionValue extends StatelessWidget {

 final Transaction transaction;

  CardTransactionValue(this.transaction);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
          border: Border.all(
        color: Colors.purple,
        width: 2,
      )),
      padding: EdgeInsets.all(10),
      child: Text(
        'R\$ ${transaction.value.toStringAsFixed(2)}',
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.purple),
      ),
    );
  }
}
