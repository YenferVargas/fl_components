import 'package:fl_components/screens/alert_screen.dart';
import 'package:fl_components/screens/listview1_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de flutter'),
        elevation: 0,
        backgroundColor: Colors.indigo,
      ),

      body: ListView.separated(
        itemBuilder: (context, index) =>  ListTile(
            leading: const Icon(Icons.app_settings_alt, color: Colors.indigoAccent,),
            title: const Text("Opciones"),
            trailing: const Icon(Icons.circle_notifications_sharp, color: Colors.indigo,),
            onTap: () {
              //final route = MaterialPageRoute(builder:(context) => const ListView1Screen());
              //Navigator.push(context, route);
              Navigator.pushNamed(context, 'listview1');

            },

          ),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: 20,
      ),
    );
  }
}