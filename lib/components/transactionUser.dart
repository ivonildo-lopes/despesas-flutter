import 'package:despesas/cardTransactionNew.dart';
import 'package:despesas/components/cardTransaction.dart';
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

  String title;
  String value;
   
   final _transactions = [
      Transaction(id: '1', title: 'cinema', value: 105, date: DateTime.now()),
      Transaction(id: '2', title: 'compras', value: 975.50, date: DateTime.now()),
      Transaction(id: '3', title: 'boneco henry', value: 79.99, date: DateTime.now()),
      Transaction(id: '4', title: 'lanche', value: 45.99, date: DateTime.now()),
   ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CardTransaction(_transactions),
          CardTransactionNew()
      ],
    );
  }
}
