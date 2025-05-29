// importa la pantalla de detalle del producto
import 'package:coffee_shop_app/Screens/single_item_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColdCoffee extends StatelessWidget {
  ColdCoffee({super.key});
// Lista con los nombres de las imágenes/productos
  List img = [
    "Dalgona",
    "Affogatto",
    "Black Coffee",
    "Cold Coffee",
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics:
          NeverScrollableScrollPhysics(), // Desactiva el scroll para que ListView maneje el desplazamiento
      crossAxisCount: 2, // Muestra 2 columnas
      shrinkWrap: true,
      childAspectRatio: (150 / 201), // Proporción de ancho/alto de los ítems
      children: [
        // Crea un contenedor para cada producto con un for
        for (int i = 0; i < img.length; i++)
          Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 13),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xFF212325),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.4),
                  spreadRadius: 1,
                  blurRadius: 8,
                ),
              ],
            ),
            child: Column(
              children: [
                // Imagen del producto con navegación al detalle
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SingleItemScreen(img[i]),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.all(2),
                    child: Image.asset(
                      "lib/images/${img[i]}.png", // Imagen correspondiente al producto
                      width: 120,
                      height: 120,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                // Título y subtítulo del producto
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          img[i], // Nombre del producto
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Best Coffee",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white60,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Precio y botón de agregar
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("\$30", // Precio fijo
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.white)),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Color(0xFFE57734), // Color del botón "+"
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Icon(
                          CupertinoIcons.add, // Icono "+"
                          size: 20,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
