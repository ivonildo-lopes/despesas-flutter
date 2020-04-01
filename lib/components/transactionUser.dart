import 'dart:math';

import 'package:despesas/components/cardTransaction.dart';
import 'package:despesas/components/cardTransactionNew.dart';
import 'package:despesas/model/transaction.dart';
import 'package:flutter/material.dart';

class TransactionUser extends StatefulWidget {
  TransactionUser();

  @override
  State<StatefulWidget> createState() {
    return _TransactionUserState();
  }
}

class _TransactionUserState extends State<TransactionUser> {

  List<Transaction> _transactions = [
    Transaction(id: '1', title: 'cinema', value: 105, date: DateTime.now()),
    Transaction(id: '2', title: 'compras', value: 975.50, date: DateTime.now()),
    Transaction(id: '3', title: 'boneco henry', value: 79.99, date: DateTime.now()),
    Transaction(id: '4', title: 'lanche', value: 45.99, date: DateTime.now()),
  ];

   _addTransaction(String title, double value) {
    setState(() {
        print('chegou aqui');
        this._transactions.add(
          Transaction(
            id: Random().nextDouble().toString(), 
            title: title, 
            value: value, 
            // value: double.parse(value), 
            date: DateTime.now()
          )
        );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CardTransaction(_transactions), 
        CardTransactionNew(_addTransaction)
      ],
    );
  }
}
