import 'package:flutter/material.dart';

class VentanaTresNDPA extends StatefulWidget {
  final String nombresControllerNDPA;
  final String apellidosControllerNDPA;
  const VentanaTresNDPA({super.key,required this.nombresControllerNDPA,required this.apellidosControllerNDPA});

  @override
  State<VentanaTresNDPA> createState() => _VentanaDosNDPAState();
}

class _VentanaDosNDPAState extends State<VentanaTresNDPA> {
  
final TextEditingController dividendoControllerNDPA= TextEditingController();
final TextEditingController divisorControllerNDPA= TextEditingController();
final TextEditingController numeroInvertidoNDPA= TextEditingController();




  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text("VENTANA TRES")),
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
                    controller: dividendoControllerNDPA,
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
                    controller: divisorControllerNDPA,
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
                    controller: numeroInvertidoNDPA,
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
                         Navigator.pop(context, {
                                  'nombreNDPA': widget.nombresControllerNDPA,
                                  'apellidoNDPA': widget.apellidosControllerNDPA,
                                  'dividendoNDPA': dividendoControllerNDPA.text,
                                  'divisorNDPA': divisorControllerNDPA.text,
                                 'numeroInvertidoNDPA': numeroInvertidoNDPA.text,
                         });
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),

               child: const Text("Cerrar"),
              ),    
              ],
            ),
          ],
        ),
      ),
    );
  }
}
