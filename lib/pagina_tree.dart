import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Pantalla 3 Camperos",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Center(
          child: Container(
            width: double.infinity,
            margin: const EdgeInsets.all(20), // Margen para mejor visualización
            height: 250.0,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(10), // Bordes redondeados
            ),
            child: AnimatedAlign(
              alignment: selected ? Alignment.topRight : Alignment.bottomLeft,
              duration: const Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  shape: BoxShape.circle,
                ),
                child: const FlutterLogo(size: 40.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
