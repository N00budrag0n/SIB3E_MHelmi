import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final item = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text("Item List"),
      ),
      body: Container(
        child: Center(
          child:
            Column(
              children: [
                Text(
                  " ${item.name} with ${item.price}"
                ),
                // Image(image: NetworkImage("${item.image}")),
              ],
            ),
        ),
      ),
    );

    // throw UnimplementedError();
  }
}