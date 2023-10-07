// import 'dart:html';
// import 'dart:io';

import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'package:db_sql/dbhelper.dart';
import 'package:db_sql/entry_form.dart';
import 'package:db_sql/item.dart';

// pendukung async
class Home extends StatefulWidget{
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home>{
  DbHelper dbHelper = DbHelper();
  int count = 0;
  var itemList = List.empty(growable: true);
  
  @override
  Widget build(BuildContext context){
    if(itemList == null){
      itemList = List.empty(growable: true);
    } else {
      updateListView();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Item'),
        backgroundColor: Colors.red,
      ),
      body: Column(children : [
        Expanded(child: createListView(),),
        Container(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              child: Text("Tambah Item"),
              onPressed: () async {
                var item = await navigateToEntryForm(context, null);
                if (item != null) {
                  //TODO 2 Panggil Fungsi untuk Insert ke DB
                  int result = await dbHelper.insert(item);
                  if (result > 0) {
                    updateListView();
                  }
                }
              },
            ),
          ),
        ),
      ]),
    );
  }

   Future<Item?> navigateToEntryForm(BuildContext context, Item? item) async {
    var result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) {
          return EntryForm(item);
        }
      )
    );
    return result;
  }

  ListView createListView() {
    // TextStyle textStyle = Theme.of(context).textTheme.headline5;
    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          color: Colors.white,
          elevation: 2.0,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.red,
              child: Icon(Icons.ad_units),
            ),
          title: Text(this.itemList[index].name, ), //style: textStyle,
          subtitle: Text(this.itemList[index].price.toString()),
          trailing: GestureDetector(
            child: Icon(Icons.delete),
            onTap: ()async {
            //TODO 3 Panggil Fungsi untuk Delete dari DB berdasarkan Item
              if (this.itemList[index] != null) {
                  int result = await dbHelper.delete(this.itemList[index].id);
                  if (result > 0) {
                    updateListView();
                  }
                }
            }, 
          ),
          onTap: () async {
            var item = await navigateToEntryForm(context, this.itemList[index]);
            //TODO 4 Panggil Fungsi untuk Edit data
            if(item != null){
              int result = await dbHelper.update(item);
                  if (result > 0) {
                    updateListView();
                  }
            }
          },
          ),
        );
      },
    );
  }

  // update list view
   void updateListView() {
    final Future<Database> dbFuture = dbHelper.initDb();
    dbFuture.then((database) {
      //TODO 1 Select data dari DB
      Future<List<Item>> itemListFuture = dbHelper.getItemList();
      itemListFuture.then((itemList) {
        setState(() {
          this.itemList = itemList;
          this.count = itemList.length;
        });
      });
    });
  }
  
}