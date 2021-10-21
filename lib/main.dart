import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'providers/provider.dart';
import 'screens/primera_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Ejemplo Provider',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: FirstPage(),
      ),
    );
  }
}
