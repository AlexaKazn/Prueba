import 'package:flutter/material.dart';

class VentanaDosNDPA extends StatelessWidget {
  final String nombresNDPA;
  final String apellidosNDPA;
  final String dividendoNDPA;
  final String divisorNDPA;

  const VentanaDosNDPA({
    super.key,
  
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ventana Dos")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Nombre: $nombresNDPA"),
            Text("Apellido: $apellidosNDPA"),
            Text("Dividendo: $dividendoNDPA"),
            Text("Divisor: $divisorNDPA"),
          ],
        ),
      ),
    );
  }
}




