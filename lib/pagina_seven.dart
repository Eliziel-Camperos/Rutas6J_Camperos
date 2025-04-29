import 'package:flutter/material.dart';

class PantallaSiete extends StatefulWidget {
  const PantallaSiete({super.key});

  @override
  State<PantallaSiete> createState() => _PantallaSieteState();
}

class _PantallaSieteState extends State<PantallaSiete> {
  double turns = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Pantalla Siete Camperos",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
        backgroundColor: Color(0xff004d6b),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 40),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: AnimatedRotation(
                turns: turns,
                duration: const Duration(seconds: 1),
                child: const FlutterLogo(size: 100),
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orangeAccent,
            ),
            onPressed: () {
              setState(() {
                turns += 1 / 4; // Rota 90 grados
              });
            },
            child: const Text('Rotar Logo'),
          ),
          const Spacer(),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Regresar!'),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
