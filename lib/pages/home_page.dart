import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //Icono izquierdo
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu, color: Colors.grey[800]),
        //Icono derecho
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Icon(Icons.person),
          )
        ],
      ),
      body: const Column(
        children: [
          //Texto principal
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 36, vertical: 18),
            child: Row(
              children: [
                Text("I want to ",
                    style: TextStyle(
                        //Tamaño de letra
                        fontSize: 32,
                        //Negritas
                        fontWeight: FontWeight.w500)),
                Text("Eat",
                    style: TextStyle(
                        //Tamaño de letra
                        fontSize: 32,
                        //Negritas
                        fontWeight: FontWeight.bold,
                        //Subrayado
                        decoration: TextDecoration.underline))
              ],
            ),
          ),

          //Pestañas(TapBar)

          //Contenido de pestañas(TapBarView)

          //Carrito (cart)
        ],
      ),
    );
  }
}
