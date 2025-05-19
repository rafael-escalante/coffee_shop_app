import 'package:flutter/material.dart';

class HomeBottomBar extends StatelessWidget {
  const HomeBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: 15), //espaciado horizontal interno
      height: 80,
      decoration: BoxDecoration(
        color: Color(0xFF212325), //color de fondo
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            spreadRadius: 1,
            blurRadius: 8,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.spaceBetween, //iconos distribuidos uniformemente
        children: [
          //inicio
          Icon(Icons.home, color: Color(0xFFE57734), size: 35),
          //favoritos
          Icon(Icons.favorite_outlined, color: Colors.white, size: 35),
          //notificaciones
          Icon(Icons.notifications, color: Colors.white, size: 35),
          //perfil del usuario
          Icon(Icons.person, color: Colors.white, size: 35),
        ],
      ),
    );
  }
}
