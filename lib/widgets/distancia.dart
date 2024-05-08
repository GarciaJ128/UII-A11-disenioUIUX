import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class Distancia extends StatelessWidget {
  const Distancia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Ionicons.locate_outline,
          color: Colors.black54,
          size: 14,
        ),
        Text(
          "USA",
          style: TextStyle(
            color: Colors.black54,
          ),
        ),
        SizedBox(width: 3),
        ...List.generate(
          18,
          (index) {
            return Expanded(
              child: Container(
                height: 2,
                color: index.isOdd ? Colors.transparent : Colors.black54,
              ),
            );
          },
        ),
        SizedBox(width: 3),
        Icon(
          Ionicons.location_outline,
          size: 14,
          color: Theme.of(context).primaryColor,
        ),
        SizedBox(width: 2),
        Text(
          "México",
          style: TextStyle(
            color: Theme.of(context).primaryColor,
          ),
        )
      ],
    );
  }
}
