import 'package:flutter/material.dart';

class FourthScreen extends StatefulWidget {
  const FourthScreen({Key? key}) : super(key: key);

  @override
  State<FourthScreen> createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
  bool _bool = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Pantalla Cuatro Camperos",
          style: TextStyle(
            color: Colors.white, // Establece el color de la letra a blanco
            fontSize: 20.0, // Establece el tamaño de la letra a 15
          ),
        ),
        backgroundColor: const Color(0xffe80032),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          // Aqui integrar el codigo
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                width: double.infinity,
                height: 100,
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    _bool = !_bool;
                  });
                },
                child: const Text(
                  'Switch',
                  style: TextStyle(
                    color: Color(0xff000000),
                  ),
                ),
              ),
              AnimatedCrossFade(
                firstChild: Image.asset(
                  'assets/elizielhablando.PNG',
                  width: double.infinity,
                  height: 300,
                ),
                secondChild: Image.asset(
                  'assets/elizielserio.PNG',
                  width: double.infinity,
                  height: 300,
                ),
                crossFadeState: _bool
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: const Duration(seconds: 1),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Regresar!'),
            ),
          ),
        ],
      ),
    );
    ;
  }
}
