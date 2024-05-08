import 'package:flutter/material.dart';
import 'package:diseniouiuxgarciaj/models/genero_model.dart';

class GenerosLibros extends StatelessWidget {
  const GenerosLibros({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Chip(
            label: Text(generosLibros[index].nombre),
            avatar: CircleAvatar(
              backgroundImage: AssetImage(generosLibros[index].imagen),
            ),
            backgroundColor: Colors.white,
            elevation: 0.4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          );
        },
        separatorBuilder: (context, index) =>
            const Padding(padding: EdgeInsets.only(right: 10)),
        itemCount: generosLibros.length,
      ),
    );
  }
}
