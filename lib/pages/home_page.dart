import 'package:donut_app_2c_perez/tabs/burger_tab.dart';
import 'package:donut_app_2c_perez/tabs/donut_tab.dart';
import 'package:donut_app_2c_perez/tabs/pancakes_tab.dart';
import 'package:donut_app_2c_perez/tabs/pizza_tab.dart';
import 'package:donut_app_2c_perez/tabs/smoothie_tab.dart';
import 'package:donut_app_2c_perez/utils/my_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = [
    const MyTab(iconPath: 'lib/icons/donut.png'),
    const MyTab(iconPath: 'lib/icons/burger.png'),
    const MyTab(iconPath: 'lib/icons/smoothie.png'),
    const MyTab(iconPath: 'lib/icons/pancakes.png'),
    const MyTab(iconPath: 'lib/icons/pizza.png')
  ];

  @override
  Widget build(BuildContext context) {
    //Icono izquierdo
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
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
        body: Column(
          children: [
            //Texto principal
            const Padding(
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

            //Pestañas(TabBar)
            TabBar(tabs: myTabs),
            //Contenido de pestañas(TapBarView)
            Expanded(
              child: TabBarView(children: [
                DonutTab(),
                BurgerTab(),
                SmoothieTab(),
                PancakesTab(),
                PizzaTab()
              ]),
            )
            //Carrito (cart)
          ],
        ),
      ),
    );
  }
}
