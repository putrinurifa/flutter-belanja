import 'package:belanja/models/Item.dart';
import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    Key? key,
    required this.itemArgs,
  }) : super(key: key);

  final Item itemArgs;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        margin: const EdgeInsets.all(8),
        width: 320,
        height: 240,
        decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Name : " + itemArgs.name,
            style: const TextStyle(fontSize: 18)),
            Text("Price : " + itemArgs.price.toString(),
            style: const TextStyle(fontSize: 18)),
            Text("Description : " + itemArgs.description,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}