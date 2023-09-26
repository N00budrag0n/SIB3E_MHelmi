import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(name: 'sugar', price: 5000, image: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fencrypted-tbn2.gstatic.com%2Flicensed-image%3Fq%3Dtbn%3AANd9GcQPRe4GYHZlX8mnBde9b19US0ngo0HTtxG9R1aRVsYv4YB657hzwezd8Cd6Zu2SdcfZuN5HY9Pa-hX2xss&psig=AOvVaw2K8umvAYe-J7AemXhw_5c9&ust=1695784010162000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCIiRou6lx4EDFQAAAAAdAAAAABAE"),
    Item(name: 'salt', price: 2000, image: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fencrypted-tbn2.gstatic.com%2Flicensed-image%3Fq%3Dtbn%3AANd9GcQPRe4GYHZlX8mnBde9b19US0ngo0HTtxG9R1aRVsYv4YB657hzwezd8Cd6Zu2SdcfZuN5HY9Pa-hX2xss&psig=AOvVaw2K8umvAYe-J7AemXhw_5c9&ust=1695784010162000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCIiRou6lx4EDFQAAAAAdAAAAABAE")
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