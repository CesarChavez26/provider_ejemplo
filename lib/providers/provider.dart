import 'package:flutter/foundation.dart';

class MyProvider with ChangeNotifier {
  String _mitexto =
      "Hola, este es un ejemplo utilizando Provider. Tendremos un Provider, que nos permitirá compartir la información entre 2 pantallas diferentes. Esto es una pequeña prueba de Provider para gestionar estados de la app.";

  String get mitexto => _mitexto;
  set mitexto(String newTexto) {
    _mitexto = newTexto;
    notifyListeners();
  }
}
