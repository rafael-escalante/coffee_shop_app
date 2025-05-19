// Importa la pantalla de bienvenida desde la carpeta screens
import 'package:coffee_shop_app/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, // Oculta la etiqueta de "debug"
        theme: ThemeData(
            scaffoldBackgroundColor: Color(0xFF212325)), //color de fondo
        home: WelcomeScreen()); // Establece la pantalla de inicio
  }
}
