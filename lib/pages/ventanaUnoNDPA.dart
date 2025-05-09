import 'package:examen_01_ti_paola_nunez/pages/ventanaDosNDPA.dart';
import 'package:flutter/material.dart';

class VentanaUnoNDPA extends StatefulWidget {

   final String? dividendoNDPA;
  final String? divisorNDPA;
  final String? numeroInvertidoNDPA;
    final String? nombreNDPA;
      final String? apellidoNDPA;
  const VentanaUnoNDPA({super.key,this.dividendoNDPA,this.divisorNDPA,this.numeroInvertidoNDPA,this.nombreNDPA,this.apellidoNDPA});

  @override
  State<VentanaUnoNDPA> createState() => _VentanaUnoNDPAState();
}

class _VentanaUnoNDPAState extends State<VentanaUnoNDPA> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("VENTANA (UNO)")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                const Text(
                  'Nombre:',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    enabled: false,
                    controller: TextEditingController(text: widget.nombreNDPA),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Nombre',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Text(
                  'Apellido:',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    enabled: false,
                    controller: TextEditingController(text: widget.apellidoNDPA),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Apellido',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 45),
            Row(
              children: [
                const Text(
                  'Dividendo:',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    enabled: false,
                    controller: TextEditingController(text: widget.dividendoNDPA),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Dividendo',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Text(
                  'Divisor:',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    enabled: false,
                    controller: TextEditingController(text: widget.divisorNDPA),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Divisor',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 45),
            Row(
              children: [
                const Text(
                  'Parte Entera:',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    enabled: false,
                    controller: TextEditingController(text: widget.dividendoNDPA),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Parte Entera',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Text(
                  'Residuo:',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    enabled: false,
                    controller: TextEditingController(text: widget.divisorNDPA),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Residuo',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 45),
            Row(
              children: [
                const Text(
                  'Numero Invertido:',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    enabled: false,
                    controller: TextEditingController(text: widget.numeroInvertidoNDPA),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Numero Invertido',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => VentanaDosNDPA()));
                  },
                  child: const Text("Siguiente"),
                ),
                ElevatedButton(
                  onPressed: null,  
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,  
                  ),
                  child: const Text("Mostrar Resultados"),
                ),
                const SizedBox(height: 10),
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}
