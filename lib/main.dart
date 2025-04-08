import 'package:flutter/material.dart';
import 'package:act5_rutas/pagina_one.dart';
import 'package:act5_rutas/pagina_two.dart';
import 'package:act5_rutas/pagina_tree.dart';

void main() => runApp(MisRutasApp());

class MisRutasApp extends StatelessWidget {
  const MisRutasApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "XD",
      debugShowCheckedModeBanner: false, // Esto quita el debug banner
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor:
              Colors.deepPurple, // Color personalizado para la AppBar
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const FirstScreen(),
        '/second': (context) => const SecondScreen(),
        '/third': (context) => const ThirdScreen(),
      },
    );
  }
}
