import 'package:diseniouiuxgarciaj/pages/pagina_inicio.dart';
import 'package:flutter/material.dart';

class PaginaBienvenida extends StatelessWidget {
  const PaginaBienvenida({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xff361035), // Color de fondo azul
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  const Spacer(),
                  Image.asset(
                    "assets/ilustration.png",
                    width: 400,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    "Librería \nDenysTale",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Descubre mundos nuevos \nentre las páginas",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: SizedBox(
                      width: double.maxFinite,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PaginaInicio(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: const StadiumBorder(),
                          padding: const EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 8.0,
                          ),
                          backgroundColor: Colors.white,
                        ),
                        child: const Text("Comenzar",
                            style: TextStyle(color: Color(0xff361035))),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
