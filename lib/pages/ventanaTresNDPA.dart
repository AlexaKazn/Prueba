import 'package:examen_01_ti_paola_nunez/pages/ventanaDosNDPA.dart';
import 'package:flutter/material.dart';

class VentanaTresNDPA extends StatefulWidget {
  final String nombresControllerNDPA;
  final String apellidosControllerNDPA;
  const VentanaTresNDPA({super.key,required this.nombresControllerNDPA,required this.apellidosControllerNDPA});

  @override
  State<VentanaTresNDPA> createState() => _VentanaDosNDPAState();
}

class _VentanaDosNDPAState extends State<VentanaTresNDPA> {
  
final TextEditingController DividendoControllerNDPA= TextEditingController();
final TextEditingController DivisorControllerNDPA= TextEditingController();
final TextEditingController NumeroInvertidoNDPA= TextEditingController();




  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text("VENTANA (DOS)")),
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
                    controller: TextEditingController(text: widget.nombresControllerNDPA),
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
                    controller: TextEditingController(text: widget.apellidosControllerNDPA),
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
                    enabled: true,
                    controller: DividendoControllerNDPA,
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
                    enabled: true,
                    controller: DivisorControllerNDPA,
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
                  'Numero Invertido:',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    enabled: true,
                    controller: NumeroInvertidoNDPA,
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
                    Navigator.pop(context,MaterialPageRoute(builder: (context) => VentanaDosNDPA(),),
                    );
                  }, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,  
                  ),
                  child: const Text("Mostrar Resultados"),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: null,
                  child: const Text("Siguiente"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
