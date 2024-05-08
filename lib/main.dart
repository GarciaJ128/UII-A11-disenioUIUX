import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:diseniouiuxgarciaj/pages/pagina_bienvenida.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Libreria DenysTale App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.mulishTextTheme(Theme.of(context).textTheme),
      ),
      home: const PaginaBienvenida(),
    );
  }
}
