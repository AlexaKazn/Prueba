import 'package:examen_01_ti_paola_nunez/pages/ventanaUno.dart';
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
      home: VentanaUno(),
      debugShowCheckedModeBanner: false,
    );
  }
}

























/*import 'package:flutter/material.dart';
import '../models/datos_usuario.dart';
import 'ventana_tres.dart';

class VentanaDos extends StatelessWidget {
  final DatosUsuario datos;

  const VentanaDos({required this.datos});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ventana Dos")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text("Nombre: ${datos.nombre}"),
            Text("Apellido: ${datos.apellido}"),
            Text("Dividendo: ${datos.dividendo}"),
            Text("Divisor: ${datos.divisor}"),
            Text("Parte entera: ${datos.parteEntera}"),
            Text("Residuo: ${datos.residuo}"),
            Text("Número invertido: ${datos.numeroInvertido}"),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => VentanaTres(datos: datos)),
              ),
              child: Text("Siguiente"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.yellow),
              onPressed: () => Navigator.pop(context),
              child: Text("Cerrar"),
            ),
          ],
        ),
      ),
    );
  }
}
 */