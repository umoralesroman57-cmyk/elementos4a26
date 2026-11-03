import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/screen2.dart';
import 'package:flutter_application_3/screens/screen3.dart';
import 'package:flutter_application_3/screens/screen4.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});



  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      appBar: AppBar(
        title: Text('Pantalla 1',
        style: TextStyle(color: Colors.white)), // Text
        backgroundColor: Color(0xFF1E293B),
      ),
      body: Container(
            color: Color(0xFFF8F9FA),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Selecciona una opción:',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFF334155)),
                  ),
                  SizedBox(height: 20),
                  boton(' Ejemplo de Rows ', Color(0xFF2563EB), context, Screen2()),
                  SizedBox(height: 20),
                  boton('Ejemplo de ListView', Color(0xFF2563EB), context, Screen3()),
                  SizedBox(height: 20),
                  boton('Entaradas de datos', Color(0xFF2563EB), context, Screen4()),
                ],
              ),
            ),
        ),
      );
  }

  Widget boton(String texto, Color color1, BuildContext context, StatelessWidget screen,){
    return ElevatedButton(
      onPressed: (){
        Navigator.push(context, 
        MaterialPageRoute(builder: (context) => screen));
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: color1,
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        )
      ),
      child: Text(
        texto,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
        ),
    );
  }
}