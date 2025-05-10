import 'package:examen_01_ti_paola_nunez/pages/ventanaUnoNDPA.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ventana Uno',
      home: VentanaUnoNDPA(),
      debugShowCheckedModeBanner: false,
    );
  }
}

