import 'package:examen_01_ti_paola_nunez/pages/ventanaTresNDPA.dart';
import 'package:flutter/material.dart';

class VentanaDosNDPA extends StatefulWidget {
  const VentanaDosNDPA({super.key});

  @override
  State<VentanaDosNDPA> createState() => _VentanaDosNDPAState();
}

class _VentanaDosNDPAState extends State<VentanaDosNDPA> {
  final TextEditingController nombresControllerNDPA = TextEditingController();
final TextEditingController apellidosControllerNDPA= TextEditingController();


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
                    enabled: true,
                    controller: nombresControllerNDPA,
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
                    enabled: true,
                    controller: apellidosControllerNDPA,
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
                    enabled: false,
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
                  onPressed: null,  
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,  
                  ),
                  child: const Text("Mostrar Resultados"),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,MaterialPageRoute(
                        builder: (context) => VentanaTresNDPA(
                      nombresControllerNDPA: nombresControllerNDPA.text,
                      apellidosControllerNDPA: apellidosControllerNDPA.text,

                    ),),
                    );
                  },
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
