// Importa la pantalla principal (home) de la aplicación
import 'package:coffee_shop_app/Screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.only(top: 100, bottom: 40),
        decoration: BoxDecoration(
            color: Colors.black, // Fondo negro
            image: DecorationImage(
              // Imagen de fondo con opacidad
              image: AssetImage("lib/images/bg.png"),
              fit: BoxFit.cover,
              opacity: 0.6,
            )),
        child: Column(
          // Columna que contiene el subtítulo y el botón
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Título del app con fuente personalizada
            Text(
              "Coffee Shop",
              style: GoogleFonts.pacifico(
                fontSize: 50,
                color: Colors.white,
              ),
            ),
            Column(
              children: [
                Text(
                  "Feeling Low? Take a Sip of Coffee",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1,
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                // Botón personalizado con Material + InkWell
                Material(
                  color: Color(0xFFE57734),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ));
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                      child: Text(
                        "Get Start",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
