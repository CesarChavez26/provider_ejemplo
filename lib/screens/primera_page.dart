import 'package:flutter/material.dart';
import 'package:provider_ejemplo/providers/provider.dart';

import 'package:provider/provider.dart';
import 'package:provider_ejemplo/screens/segunda_page.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<MyProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Primer Página'),
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
                      ))),
              MaterialButton(
                onPressed: () {
                  myProvider.mitexto =
                      "Provider nos brinda una forma fácil y sencilla de separar la lógica empresarial de nuestros widgets en las aplicaciones.";
                },
                color: Colors.black,
                child: Text(
                  "Cambiar Texto",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              MaterialButton(
                color: Colors.black,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondPage()));
                },
                child: Text(
                  "Ir a página 2",
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
