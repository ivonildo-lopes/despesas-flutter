import 'package:despesas/components/cardTransactionValue.dart';
import 'package:despesas/components/cardTrasactionDescription.dart';
import 'package:despesas/model/transaction.dart';
import 'package:flutter/material.dart';

class CardTransaction extends StatelessWidget {
  final List<Transaction> _transaction;

  CardTransaction(this._transaction);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView(
        children: <Widget>[
          Column(
            children: this._transaction.map((transaction) {
              return Card(
                child: Row(
                  children: <Widget>[
                    CardTransactionValue(transaction),
                    CardTransactionDescription(transaction),
                  ],
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
