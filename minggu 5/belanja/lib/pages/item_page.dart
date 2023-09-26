import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final item = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text("Item Details"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(),
              child: Image.asset(item.image)
            ),
            Container(
              child: Text("${item.name}"),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Text("Harga: ${item.price}"),
            ),
            ElevatedButton(
              onPressed: (){

              }, child: Text("Beli Sekarang")
            ),
          ],
        ),
      ),
    );

    // throw UnimplementedError();
  }
}