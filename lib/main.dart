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
         Column(
           children: this._transaction.map((transaction) {
             return Card(
               child: Row(
                 children: <Widget>[
                   Container(
                     child: Text(transaction.value.toString()),
                   ),
                   Column(
                     children: <Widget>[
                       Text(transaction.title),
                       Text(transaction.date.toString()),
                     ],
                   )
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