import 'package:flutter/material.dart';
import 'package:examen_01_ti_paola_nunez/pages/ventanaTresNDPA.dart';
import 'package:examen_01_ti_paola_nunez/pages/ventanaUnoNDPA.dart';

class VentanaDosNDPA extends StatefulWidget {
  final String? nombreNDPA;
  final String? apellidoNDPA;
  final String? dividendoNDPA;
  final String? divisorNDPA;
  final String? numeroInvertidoNDPA;

  const VentanaDosNDPA({
    super.key,
    this.nombreNDPA,
    this.apellidoNDPA,
    this.dividendoNDPA,
    this.divisorNDPA,
    this.numeroInvertidoNDPA,
  });

  @override
  State<VentanaDosNDPA> createState() => _VentanaDosNDPAState();
}

class _VentanaDosNDPAState extends State<VentanaDosNDPA> {
  final TextEditingController nombresControllerNDPA = TextEditingController();
  final TextEditingController apellidosControllerNDPA = TextEditingController();

  String? dividendoNDPA;
  String? divisorNDPA;
  String? numeroInvertidoNDPA;

  @override
  void initState() {
    super.initState();
    nombresControllerNDPA.text = widget.nombreNDPA ?? '';
    apellidosControllerNDPA.text = widget.apellidoNDPA ?? '';
    dividendoNDPA = widget.dividendoNDPA;
    divisorNDPA = widget.divisorNDPA;
    numeroInvertidoNDPA = widget.numeroInvertidoNDPA;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("VENTANA DOS")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildEditableField("Nombre:", nombresControllerNDPA),
            const SizedBox(height: 10),
            _buildEditableField("Apellido:", apellidosControllerNDPA),
            const SizedBox(height: 45),
            _buildReadOnlyField("Dividendo:", dividendoNDPA),
            const SizedBox(height: 10),
            _buildReadOnlyField("Divisor:", divisorNDPA),
            const SizedBox(height: 45),
            _buildReadOnlyField("Número Invertido:", numeroInvertidoNDPA),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => VentanaTresNDPA(
                      nombresControllerNDPA: nombresControllerNDPA.text,
                      apellidosControllerNDPA: apellidosControllerNDPA.text,
                    ),
                  ),
                );

                if (result != null && result is Map<String, String>) {
                  setState(() {
                    dividendoNDPA = result['dividendoNDPA'];
                    divisorNDPA = result['divisorNDPA'];
                    numeroInvertidoNDPA = result['numeroInvertidoNDPA'];
                  });
                }
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),

              child: const Text("Siguiente"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => VentanaUnoNDPA(
                      nombreNDPA: nombresControllerNDPA.text,
                      apellidoNDPA: apellidosControllerNDPA.text,
                    ),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
              child: const Text("Cerrar"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEditableField(String label, TextEditingController controller) {
    return Row(
      children: [
        Text(label, style: const TextStyle(fontSize: 20)),
        const SizedBox(width: 10),
        Expanded(
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: label.replaceAll(":", ""),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildReadOnlyField(String label, String? value) {
    return Row(
      children: [
        Text(label, style: const TextStyle(fontSize: 20)),
        const SizedBox(width: 10),
        Expanded(
          child: TextField(
            enabled: false,
            controller: TextEditingController(text: value ?? ''),
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: label.replaceAll(":", ""),
            ),
          ),
        ),
      ],
    );
  }
}
