import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//pantalla que muestra detalles de un solo producto
class SingleItemScreen extends StatelessWidget {
  // Constructor que recibe el nombre de la imagen
  String img;
  SingleItemScreen(this.img);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Constructor que recibe el nombre de la imagen
      body: SingleChildScrollView(
        child: SafeArea(
          //evita que el contenido se superponga con la barra de estado
          child: Padding(
            padding: EdgeInsets.only(top: 30, bottom: 20),
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, //alinea todo a la izquierda
              children: [
                //boton para regresar a la pantalla anterior
                Padding(
                  padding: EdgeInsets.only(
                    left: 25,
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context); //regresa a la pantalla anterior
                    },
                    child: Icon(Icons.arrow_back_ios_new,
                        color: Colors.white.withOpacity(0.5)),
                  ),
                ),
                SizedBox(height: 50),
                //imagen del producto
                Center(
                  child: Image.asset(
                    "lib/images/$img.png",
                    width: MediaQuery.of(context).size.width / 1.2,
                  ),
                ),
                SizedBox(height: 50),
                //informacion del producto
                Padding(
                  padding: EdgeInsets.only(
                    left: 25,
                    right: 40,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //texto superior tipo etiqueta
                      Text(
                        "BEST COFFEE",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.4),
                          letterSpacing: 3,
                        ),
                      ),
                      SizedBox(height: 20),
                      //nombre del producto
                      Text(img,
                          style: TextStyle(
                            fontSize: 30,
                            letterSpacing: 1,
                            color: Colors.white,
                          )),
                      SizedBox(height: 25),
                      //selector de cantidad y precio
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //contenedor para seleccionar cantidad
                            Container(
                              padding: EdgeInsets.all(15),
                              width: 120,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white.withOpacity(0.2),
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                      CupertinoIcons.minus, //disminuir cantidad
                                      size: 18,
                                      color: Colors.white),
                                  SizedBox(width: 15),
                                  Text(
                                    "2", //cantidad de productos fija
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(width: 15),
                                  Icon(CupertinoIcons.add, //aumentar cantidad
                                      size: 18,
                                      color: Colors.white),
                                ],
                              ),
                            ),
                            //precio del producto
                            Text(
                              "\$ 30.20",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      //descripcion del producto
                      Text(
                        "Coffee is a major source of antioxidants in the diet. It has many health benefits",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white.withOpacity(0.4),
                        ),
                      ),
                      SizedBox(height: 20),
                      //cantodad de la bebida
                      Row(
                        children: [
                          Text(
                            "Volume: ",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                          SizedBox(width: 10),
                          Text(
                            "60 ml",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          )
                        ],
                      ),
                      SizedBox(height: 30),
                      //boton "add to cart"
                      Container(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 50),
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 50, 54, 56),
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                child: Text(
                                  "Add to Cart",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ),
                              //boton de favorito
                              Container(
                                  padding: EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFE57734),
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                  child: Icon(
                                    Icons.favorite_outline,
                                    color: Colors.white,
                                  ))
                            ],
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
