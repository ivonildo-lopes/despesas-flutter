import 'package:despesas/model/transaction.dart';
import 'package:flutter/material.dart';

main() => runApp(Despesa());

class Despesa  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: HomePage(),
    );
  }
}

class HomePage  extends StatelessWidget {
   
   final _transaction = [
      Transaction(id: '1', title: 'cinema', valor: 105, date: DateTime.now()),
      Transaction(id: '2', title: 'compras', valor: 975.50, date: DateTime.now()),
      Transaction(id: '3', title: 'boneco henry', valor: 79.99, date: DateTime.now()),
      Transaction(id: '4', title: 'lanche', valor: 45.99, date: DateTime.now()),
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Controle de despesas'),
      ),
      body: Column(       
        // crossAxisAlignment: CrossAxisAlignment.center, // default
        // mainAxisAlignment: MainAxisAlignment.start, // default
        mainAxisAlignment: MainAxisAlignment.spaceAround, 
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            // width: double.infinity,
            height: 100,
            child: Card(
              child: Text('AQUI FICARA O GRAFICO'),
              color: Colors.grey[350],
              elevation: 5,
            ),
          ),
          Card(
            child: Text('AQUI FICARA A LISTA DE GASTOS'),
          ),
        ],
      ),
    );
  }
}