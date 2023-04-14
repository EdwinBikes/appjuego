import 'package:flutter/material.dart';

class AdivinanzaScreen extends StatelessWidget {
  AdivinanzaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adivinanza'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            '¿Cuál es el país más grande del mundo?',
            style: TextStyle(fontSize: 20.0),
          ),
          SizedBox(height: 20.0),
          RaisedButton(
            child: Text('Responder'),
            onPressed: () {
              // TODO: agregar la lógica para verificar la respuesta
            },
          ),
        ],
      ),
    );
  }
}
