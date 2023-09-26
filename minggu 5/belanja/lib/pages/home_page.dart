import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(name: 'Gula Pasir 1 Kg', price: 15000, image: "assets/images/gulo.jpg"),
    Item(name: 'Garam Halus 500 g', price: 3000, image: "assets/images/uyah.jpg"),
    Item(name: 'Teh Botol 300 g', price: 3000, image: "assets/images/teh.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Item List"),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: ListView.builder(
          padding: EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
              onTap: (){
                Navigator.pushNamed(context, '/item', arguments: item);
              },
              child: Card(
                child: Container(
                  margin: EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Expanded(child: Text(item.name)),
                      Expanded(
                        child: Text(
                          item.price.toString(),
                          textAlign: TextAlign.end,
                        ),),
                      
                    ],
                  ),
                ),
              ),
            );
          }
        ),
      )
    );

    throw UnimplementedError();
  }
}