import 'package:belanja/models/Item.dart';
import 'package:belanja/widgets/card_home.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final List<Item> items = [
    Item(
      name: 'Sugar',
      price: 5000,
      description: 'Gula dengan harga 500 per bungkus'),
    Item(
      name: 'Salt',
      price: 2000,
      description:'Garam dengan harga 2000 per bungkus')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping List'),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/item', arguments: item);
              },
              child: CardHome(item: item),
            );
          },
        ),
      ),
    );
  }
}
