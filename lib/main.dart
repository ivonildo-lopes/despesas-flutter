import 'package:despesas/cardTransactionNew.dart';
import 'package:despesas/components/cardTransaction.dart';
import 'package:despesas/components/transactionUser.dart';
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
          TransactionUser()
          // CardTransaction(null),
          // CardTransactionNew()
        ],
      ),
    );
  }
}