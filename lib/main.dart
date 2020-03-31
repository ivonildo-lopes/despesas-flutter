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
      body: Center(
        child: Text('Versao inicial'),
      ),
    );
  }
}