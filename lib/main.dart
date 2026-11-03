import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/screen1.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // Quita la etiqueta de debug
      title: 'proyecto1', // Título de la app
      home: Screen1(), // Qué ventana se muestra al inicio
    );
  }
}
