import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:provider_ejemplo/providers/provider.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<MyProvider>(context);
    //Creamos una instancia de myProvider con el cual lograremos interactuar de dentro de los widgets.
    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda Página'),
        backgroundColor: Colors.amber,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              Center(
                  child: Card(
                      elevation: 20,
                      color: Colors.blue[50],
                      shadowColor: Colors.blueAccent,
                      child: SizedBox(
                        width: 300,
                        height: 100,
                        child: Text(myProvider.mitexto),
                        //Por medio myProvider accedemos al método getter “mitexto” el cual nos devuelve un String que ese dice " Hola, este es un ejemplo utilizando Provider. Tendremos un Provider, que nos permitirá compartir la información entre 2 pantallas diferentes. Esto es una pequeña prueba de Provider para gestionar estados de la app.".
                      ))),
              MaterialButton(
                color: Colors.black,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Volver",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
