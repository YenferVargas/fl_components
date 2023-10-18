import 'dart:math';

import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {

  final opciones = const['corn', 'slipknot', 'corn', 'corn', 'slipknot'];

  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView1'),
          elevation: 0,
        ),
        body: ListView(
          children: [
            ...opciones.map((e) => ListTile(
              leading: Icon(Icons.check),
              title: Text(e),
              trailing: const Icon(Icons.music_note_outlined),
            ))

            /*ListTile(
              leading: Icon(Icons.check),
              title: Text('Texto para listar nuevo elemento'),
            )*/
          ],
        )
    );
  }
}