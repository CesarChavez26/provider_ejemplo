import 'package:flutter/foundation.dart';

class MyProvider with ChangeNotifier {
  String _mitexto =
      //Creamos e inicializamos una variable.
      "Hola, este es un ejemplo utilizando Provider. Tendremos un Provider, que nos permitirá compartir la información entre 2 pantallas diferentes. Esto es una pequeña prueba de Provider para gestionar estados de la app.";

  //Creamos el método get poder obtener el valor de mitexto.
  String get mitexto => _mitexto;
  //Creamos el método set para actualizar el valor de _mitexto. Aquí se recibe el valor de newTexto de tipo String.
  set mitexto(String newTexto) {
    //Se actualiza el valor.
    _mitexto = newTexto;
    //Se notifica a los widgets que estén escuchando el stream.
    notifyListeners();
  }
}
