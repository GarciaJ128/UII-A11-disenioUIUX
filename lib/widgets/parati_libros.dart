import 'package:diseniouiuxgarciaj/models/parati_libros_model.dart';
import 'package:diseniouiuxgarciaj/widgets/distancia.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class ParaTi extends StatelessWidget {
  const ParaTi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(paratiModel.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: SizedBox(
            width: double.infinity,
            child: Card(
              elevation: 0.4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(12),
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          paratiModel[index].imagen,
                          height: 120,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Ejemplo",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text("Autor"),
                            SizedBox(height: 10),
                            Distancia(),
                            SizedBox(height: 15),
                            Row(
                              children: [
                                Icon(
                                  Ionicons.star,
                                  color: Colors.yellow,
                                  size: 14,
                                ),
                                Text(
                                  "4.5",
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  '\$22',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.blue,
                                    fontWeight: FontWeight
                                        .bold, // Ajusta el estilo según tus necesidades
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
