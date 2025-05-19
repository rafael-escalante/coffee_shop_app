// Importa el widget de la barra inferior personalizada
// Importa el widget que contiene los productos (Items)
import 'package:coffee_shop_app/widgets/home_bottom_bar.dart';
import 'package:coffee_shop_app/widgets/items_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  // Permite animaciones como TabController
  late TabController _tabController; // Controlador de pestañas

  @override
  void initState() {
    // Inicializa el controlador con 4 pestañas
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    // Agrega listener para manejar los cambios de pestaña
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }

// Función que se ejecuta cuando se cambia de pestaña
  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // Evita que el contenido se superponga con el notch o la barra de estado
        child: Padding(
          padding: EdgeInsets.only(top: 15),
          child: ListView(
            // Hace que la pantalla sea desplazable
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      // Botón táctil sin funcionalidad aún
                      onTap: () {},
                      child: Icon(
                        Icons.sort_rounded,
                        color: Colors.white.withOpacity(0.5),
                        size: 35,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.notifications,
                        color: Colors.white.withOpacity(0.5),
                        size: 35,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text("It's a Great Day for Coffee",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    )),
              ),
              // Barra de búsqueda
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                width: MediaQuery.of(context).size.width,
                height: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 50, 54, 56),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Find your coffee",
                    hintStyle: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                    ),
                    prefixIcon: Icon(Icons.search,
                        size: 30, color: Colors.white.withOpacity(0.5)),
                  ),
                ),
              ),
              // Barra de pestañas (categorías de café)
              TabBar(
                  controller: _tabController,
                  labelColor: Color(0xFFE57734), // Color de la pestaña activa
                  unselectedLabelColor:
                      Colors.white.withOpacity(0.5), // Color de las inactivas
                  isScrollable:
                      true, // Permite desplazamiento si hay muchas pestañas
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(
                      width: 3,
                      color: Color(0xFFE57734),
                    ),
                    insets: EdgeInsets.symmetric(horizontal: 16),
                  ),
                  labelStyle:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  labelPadding: EdgeInsets.symmetric(horizontal: 20),
                  tabs: [
                    Tab(text: "Hot Coffee"),
                    Tab(text: "Cold Coffee"),
                    Tab(text: "Cappuccino"),
                    Tab(text: "Americano"),
                  ]),
              SizedBox(height: 10),
              // Muestra los productos según la pestaña seleccionada
              Center(
                child: [
                  ItemsWidget(), // Cada uno puede representar una categoría
                  ItemsWidget(),
                  ItemsWidget(),
                  ItemsWidget(),
                ][_tabController
                    .index], // Muestra solo el correspondiente a la pestaña actual
              )
            ],
          ),
        ),
      ),
      // Barra de navegación inferior personalizada
      bottomNavigationBar: HomeBottomBar(),
    );
  }
}
