import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final opciones = const ['corn', 'slipknot', 'corn', 'corn', 'slipknot'];

  const ListView2Screen({Key? key}) : super(key: key);

  

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        
        title: const Text("ListView2Screen"),
        elevation: 0,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: const Icon(Icons.headset), // Icono a la izquierda
          title: Text(opciones[index]), // Texto en el centro
          trailing: const Icon(Icons.music_note_outlined, color: Color.fromARGB(255, 136,15,25),), // Icono a la derecha
          onTap: () {
            final opt = opciones[index];
            print(opt);
          },
        ),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: opciones.length,
      )
      );
  }
}