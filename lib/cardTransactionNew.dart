import 'package:flutter/material.dart';

class CardTransactionNew  extends StatelessWidget {
   
   final titleControlher = TextEditingController();
   final valueControlher = TextEditingController();

   CardTransactionNew();

  @override
  Widget build(BuildContext context) {
    return Card(
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    // onChanged: (newValue) => title = newValue,
                    controller: this.titleControlher,
                    decoration: InputDecoration(
                      labelText: 'Titulo'
                    ),
                  ),
                  TextField(
                    // onChanged: (newValue) => value = newValue,
                    controller: this.valueControlher,
                    decoration: InputDecoration(
                      labelText: 'Valor R\$',
                    ),
                  ),
                  FlatButton( 
                    child: Text('Nova Transacao',
                      style: TextStyle(
                        color: Colors.purple
                      ),
                    ),
                    onPressed: () {
                      print(titleControlher.text);
                      print(valueControlher.text);
                    },
                  )
                ],
              ),
            ),
          );
  }
}