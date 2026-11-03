import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});
final equipos= const[
  'Cruz Azul',
  'Barcelona',
  'Manchester',
  'Porto',
  'Tigres',
  'Toluca',
];

final juagdores= const[
  'Lamine Yamal',
  'Montaño',
  'Mier',
  'Cubarsi',
  'Carlos Rodriguez',
  'Joao Cancelo',
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ventana 3'),),
      body: ListView(
        children: [
          ...equipos.map((equipo)=>ListTile(
            leading: Icon(Icons.shield),
            title: Text(equipo),
            subtitle: Text('Equipo grande'),
            trailing: Icon(Icons.arrow_forward),
            tileColor: Color(0xFF1E293B),
            iconColor: Colors.white,
            textColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          ),
          Divider(),
          ...juagdores.map((jugador)=>ListTile(
            leading: Icon(Icons.person),
            title: Text(jugador),
            subtitle: Text('Buen jugador'),
            trailing: Icon(Icons.arrow_forward),
            tileColor: Color(0xFF2563EB),
            iconColor: Colors.white,
            textColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          ),
        ],
      ),
    );
  }
}