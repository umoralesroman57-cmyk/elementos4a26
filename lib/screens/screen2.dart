import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla 2',
        style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            mostrarImagen(1),
            SizedBox(width: 10),
            mostrarImagen(2),
            SizedBox(width: 10),
            mostrarImagen(3),
          ],
        ),
      ),
    );
  }

  Widget mostrarImagen(int numImagen){
    String nombreImagen = '';
    switch( numImagen){
      case 1:
        nombreImagen = 'assets/imgs/barcelona1.jpg';
        break;
      case 2: 
        nombreImagen = 'assets/imgs/barcelona2.jpg';
        break;
      case 3: 
        nombreImagen = 'assets/imgs/barcelona3.jpg';
        break;
    }
    return Image.asset(
      nombreImagen,
      width: 120,
      height: 150,
      fit: BoxFit.fill,
      );
  }

}