import 'package:diseniouiuxgarciaj/widgets/custom_icon_button.dart';
import 'package:diseniouiuxgarciaj/widgets/genero.dart';
import 'package:diseniouiuxgarciaj/widgets/oferta_card.dart';
import 'package:diseniouiuxgarciaj/widgets/parati_libros.dart';
import 'package:diseniouiuxgarciaj/widgets/recomendacion_libros.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class PaginaInicio extends StatelessWidget {
  const PaginaInicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Buenos días"),
            Text(
              "Librería DenysTale",
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ],
        ),
        actions: [
          const CustomIconButton(
            icon: Icon(Ionicons.search_outline),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 12),
            child: const CustomIconButton(
              icon: Icon(Ionicons.notifications_outline),
            ),
          ),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(14),
        children: [
          //Tarjeta de oferta
          const OfertaCard(),
          const SizedBox(
            height: 15,
          ),
          //Genero de Libros
          const GenerosLibros(),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recomendaciones",
                style: Theme.of(context).textTheme.headline6,
              ),
              TextButton(onPressed: () {}, child: const Text("Ver más"))
            ],
          ),
          //Recomendacion
          const SizedBox(height: 10),
          const RecomendacionLibros(),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Libros para ti",
                style: Theme.of(context).textTheme.headline6,
              ),
              TextButton(onPressed: () {}, child: const Text("Ver más"))
            ],
          ),
          const SizedBox(height: 10),
          const ParaTi(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Ionicons.home_outline), label: "Inicio"),
          BottomNavigationBarItem(
              icon: Icon(Ionicons.apps_outline), label: "Categorías"),
          BottomNavigationBarItem(
              icon: Icon(Ionicons.cart_outline), label: "Carrito"),
          BottomNavigationBarItem(
              icon: Icon(Ionicons.person_outline), label: "Cuenta"),
        ],
      ),
    );
  }
}
