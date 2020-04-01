import 'package:despesas/cardTransaction.dart';
import 'package:despesas/cardTransactionNew.dart';
import 'package:despesas/grafico.dart';
import 'package:despesas/model/transaction.dart';
import 'package:flutter/material.dart';

main() => runApp(Despesa());

class Despesa  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage  extends StatelessWidget {

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
    return Scaffold(
      appBar: AppBar(
        title: Text('Controle de despesas'),
      ),
      body: Column(       
        // mainAxisAlignment: MainAxisAlignment.spaceAround, 
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Grafico(),
          CardTransaction(_transactions),
          CardTransactionNew()
        ],
      ),
    );
  }
}