import 'package:flutter/material.dart';

class CardTransactionNew extends StatelessWidget {
  final titleControlher = TextEditingController();
  final valueControlher = TextEditingController();

  final void Function(String, double) addTransaction;

  CardTransactionNew(this.addTransaction);

  _submit() {

    final String title = titleControlher.text;
    final double value  = double.tryParse(valueControlher.text) ?? 0;

    if(title.isEmpty || value < 0) return;

    this.addTransaction(title,value);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: this.titleControlher,
              onSubmitted: (_) => _submit(),
              decoration: InputDecoration(labelText: 'Titulo'),
            ),
            TextField(
              controller: this.valueControlher,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              onSubmitted: (_) => _submit(),
              decoration: InputDecoration(
                labelText: 'Valor R\$',
              ),
            ),
            FlatButton(
              child: Text(
                'Nova Transacao',
                style: TextStyle(color: Colors.purple),
              ),
              onPressed: () {
                _submit();
              },
            )
          ],
        ),
      ),
    );
  }
}
