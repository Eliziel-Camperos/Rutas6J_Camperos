import 'package:flutter/material.dart';

class SixthScreen extends StatefulWidget {
  const SixthScreen({Key? key}) : super(key: key);

  @override
  State<SixthScreen> createState() => _SixthScreenState();
}

class _SixthScreenState extends State<SixthScreen> {
  double padValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Pantalla Seis Camperos",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
        backgroundColor: Color(0xff6f00ff),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orangeAccent,
            ),
            onPressed: () {
              setState(() {
                padValue = padValue == 0.0 ? 100.0 : 0.0;
              });
            },
            child: const Text('Cambiar Padding'),
          ),
          const SizedBox(height: 10),
          Text('Padding = $padValue'),
          const SizedBox(height: 10),
          AnimatedPadding(
            padding: EdgeInsets.all(padValue),
            duration: const Duration(seconds: 2),
            curve: Curves.easeInOut,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4,
              color: Colors.orangeAccent,
            ),
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
