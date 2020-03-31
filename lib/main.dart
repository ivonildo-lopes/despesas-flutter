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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Controle de despesas'),
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.start, // esquerda
        // crossAxisAlignment: CrossAxisAlignment.center, // default
        // crossAxisAlignment: CrossAxisAlignment.end, // direita
        children: <Widget>[
          Container(
            width: double.infinity,
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