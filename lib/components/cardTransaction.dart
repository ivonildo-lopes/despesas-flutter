import 'package:despesas/components/cardTransactionValue.dart';
import 'package:despesas/components/cardTrasactionDescription.dart';
import 'package:despesas/model/transaction.dart';
import 'package:flutter/material.dart';

class CardTransaction extends StatelessWidget {
  final List<Transaction> _transactions;

  CardTransaction(this._transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        itemCount: _transactions.length,
        itemBuilder: (ctx, index){
          final transaction = _transactions[index];
          return Card(
                child: Row(
                  children: <Widget>[
                    CardTransactionValue(transaction),
                    CardTransactionDescription(transaction),
                  ],
              ),
          );
        },
      ),
    );
  }
}
