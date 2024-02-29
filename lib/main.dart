import 'package:flutter/material.dart';

void main() => runApp(const AppMiTabBar());

class AppMiTabBar extends StatelessWidget {
  const AppMiTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ejemplo TabBar Arias',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: DefaultTabController(
        length: 4, // Ajustar la longitud del TabController
        child: MiPaginaInicial(),
      ),
    );
  }
}

class MiPaginaInicial extends StatefulWidget {
  const MiPaginaInicial({Key? key}) : super(key: key);

  @override
  State<MiPaginaInicial> createState() => _MiPaginaInicialState();
}

class _MiPaginaInicialState extends State<MiPaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alexander Arias"),
        centerTitle: true,
        bottom: TabBar(
          tabs: [
            Tab(
              text: "Prod",
              icon: Icon(Icons.shopping_bag),
            ),
            Tab(
              text: "Mas",
              icon: Icon(Icons.add),
            ),
            Tab(
              text: "Opcion 3",
              icon: Icon(Icons.do_not_disturb_on),
            ),
            Tab(
              text: "Opcion 4",
              icon: Icon(Icons.dynamic_feed),
            ),
          ],
        ),
      ),
      body: TabBarView(
        children: <Widget>[
          // Widget para la pestaña de "Productos"
          Center(
            child: Text(
              "Opcion 1",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
                fontSize: 24, // Cambia el tamaño del texto aquí
              ),
            ),
          ),
          // Widget para la pestaña de "Mas"
          Center(
            child: Text(
              "Opcion 2",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
                fontSize: 24, // Cambia el tamaño del texto aquí
              ),
            ),
          ),
          // Otras dos opciones de Center
          Center(
            child: Text(
              "Opción 3",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
                fontSize: 24, // Cambia el tamaño del texto aquí
              ),
            ),
          ),
          Center(
            child: Text(
              "Opción 4",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
                fontSize: 24, // Cambia el tamaño del texto aquí
              ),
            ),
          ),
        ],
      ),
    );
  }
}
