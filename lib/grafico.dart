import 'package:flutter/material.dart';

class Grafico extends StatelessWidget {
  Grafico();

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      height: 50,
      child: Card(
        child: Text('AQUI FICARA O GRAFICO'),
        color: Colors.purple[350],
        elevation: 5,
      ),
    );
  }
}
