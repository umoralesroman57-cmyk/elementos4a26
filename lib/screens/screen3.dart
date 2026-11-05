import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

final Map<String, String> equipos = const{
  'Barcelona': 'assets/imgs/fcblogo.png',
  'Manchester United': 'assets/imgs/manchesteru.png',
  'Porto': 'assets/imgs/porlog.png',
  'Tigres': 'assets/imgs/tigreslogo.png',
  'Toluca': 'assets/imgs/tolucalogo.png',
  'Cruz Azul': 'assets/imgs/cazlogo.png',
};


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
          ...equipos.entries.map((equipo){
            return _titleEquipo(
            equipo.key,
            equipo.value,
            Colors.blueAccent,
            Colors.amberAccent,
            Colors.white,
            );
          }),


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

  Widget _titleEquipo(
  String equipoName,
  String equipoLogo,
  Color tileColor,
  Color iconColor,
  Color textColor

  ){
  final tile = ListTile(
      leading: Image.asset(equipoLogo, width: 50, height: 50,),
      title: Text(equipoName),
      subtitle: Text('Equipo grande'),
      trailing: Icon(Icons.arrow_forward),
      tileColor: tileColor,
      iconColor: iconColor,
      textColor: textColor,
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
            ),
          );
  final espacio = SizedBox(height: 10,);
  return Column(children: [tile,espacio]);

  }
}